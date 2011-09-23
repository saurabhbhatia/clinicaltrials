require "friendly_id/slug"

module FriendlyId

=begin
This module adds the ability to store a log of a model's slugs, so that when its
friendly id changes, it's still possible to perform finds by the old id.

The primary use case for this is avoiding broken URLs.

== Setup

In order to use this module, you must add a table to your database schema to
store the slug records. FriendlyId provides a generator for this purpose:

  rails generate friendly_id
  rake db:migrate

This will add a table named +friendly_id_slugs+, used by the {FriendlyId::Slug}
model.

== Considerations

This module is incompatible with the +:scoped+ module.

Because recording slug history requires creating additional database records,
this module has an impact on the performance of the associated model's +create+
method.

== Example

    class Post < ActiveRecord::Base
      extend FriendlyId
      friendly_id :title, :use => :history
    end

    class PostsController < ApplicationController

      before_filter :find_post

      ...

      def find_post
        Post.find params[:id]

        # If an old id or a numeric id was used to find the record, then
        # the request path will not match the post_path, and we should do
        # a 301 redirect that uses the current friendly id.
        if request.path != post_path(@post)
          return redirect_to @post, :status => :moved_permanently
        end
      end
    end
=end
  module History

    # Configures the model instance to use the History add-on.
    def self.included(model_class)
      model_class.instance_eval do
        raise "FriendlyId::History is incompatible with FriendlyId::Scoped" if self < Scoped
        @friendly_id_config.use :slugged
        has_many :slugs, :as => :sluggable, :dependent => :destroy,
          :class_name => Slug.to_s, :order => "#{Slug.quoted_table_name}.id DESC"
        before_save :build_slug
        relation_class.send :include, FinderMethods
      end
    end

    private

    def build_slug
      return unless should_generate_new_friendly_id?
      # Allow reversion back to a previously used slug
      slugs.where(:slug => friendly_id).delete_all
      slugs.build :slug => friendly_id
    end

    # Adds a finder that explictly uses slugs from the slug table.
    module FinderMethods

      # Search for a record in the slugs table using the specified slug.
      def find_one(id)
        return super(id) if id.unfriendly_id?
        where(@klass.friendly_id_config.query_field => id).first or
        with_old_friendly_id(id) {|x| find_one_without_friendly_id(x)} or
        find_one_without_friendly_id(id)
      end

      # Search for a record in the slugs table using the specified slug.
      def exists?(id = nil)
        return super(id) if id.unfriendly_id?
        exists_without_friendly_id?(@klass.friendly_id_config.query_field => id) or
        with_old_friendly_id(id) {|x| exists_without_friendly_id?(x)} or
        exists_without_friendly_id?(id)
      end

      private

      # Accepts a slug, and yields a corresponding sluggable_id into the block.
      def with_old_friendly_id(slug, &block)
        sql = "SELECT sluggable_id FROM #{Slug.quoted_table_name} WHERE sluggable_type = %s AND slug = %s"
        sql = sql % [@klass.base_class.name, slug].map {|x| connection.quote(x)}
        sluggable_id = connection.select_values(sql).first
        yield sluggable_id if sluggable_id
      end
    end
  end
end
