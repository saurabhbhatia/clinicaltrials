require 'spec_helper' 

module ActiveAdmin
  class Resource
    describe BelongsTo do

      let(:namespace){ Namespace.new(:admin) }
      let(:post){ namespace.register(Post) }
      let(:belongs_to){ BelongsTo.new(post, :user) }

      it "should have an owner" do
        belongs_to.owner.should == post
      end

      it "should have a namespace" do
        belongs_to.namespace.should == namespace
      end

      describe "finding the target" do
        context "when the resource has been registered" do
          let(:user){ namespace.register(User) }
          before { user } # Ensure user is registered

          it "should return the target resource" do
            belongs_to.target.should == user
          end
        end

        context "when the resource has not been registered" do
          it "should raise a ActiveAdmin::BelongsTo::TargetNotFound" do
            lambda {
              belongs_to.target
            }.should raise_error(ActiveAdmin::Resource::BelongsTo::TargetNotFound)
          end
        end
      end

      it "should be optional" do
        belongs_to = BelongsTo.new post, :user, :optional => true
        belongs_to.should be_optional
      end
    end
  end
end
