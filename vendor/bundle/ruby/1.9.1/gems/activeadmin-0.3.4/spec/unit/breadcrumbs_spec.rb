require 'spec_helper' 

describe "Breadcrumbs" do

  include ActiveAdmin::ViewHelpers

  describe "generating a trail from paths" do

    # Mock our params
    def params; {}; end
    # Mock link to and return a hash
    def link_to(name, url); {:name => name, :path => url}; end

    let(:trail) { breadcrumb_links(path) }

    context "when request '/admin'" do
      let(:path){ "/admin" }

      it "should not have any items" do
        trail.size.should == 0
      end
    end

    context "when path '/admin/posts'" do
      let(:path) { "/admin/posts" }

      it "should have one item" do
        trail.size.should == 1
      end
      it "should have a link to /admin" do
        trail[0][:name].should == "Admin"
        trail[0][:path].should == "/admin"
      end
    end

    context "when path '/admin/posts/1'" do
      let(:path) { "/admin/posts/1" }

      it "should have 2 items" do
        trail.size.should == 2
      end
      it "should have a link to /admin" do
        trail[0][:name].should == "Admin"
        trail[0][:path].should == "/admin"
      end
      it "should have a link to /admin/posts" do
        trail[1][:name].should == "Posts"
        trail[1][:path].should == "/admin/posts"
      end
    end

    context "when path '/admin/posts/1/comments'" do
      let(:path) { "/admin/posts/1/comments" }

      it "should have 3 items" do
        trail.size.should == 3
      end
      it "should have a link to /admin" do
        trail[0][:name].should == "Admin"
        trail[0][:path].should == "/admin"
      end
      it "should have a link to /admin/posts" do
        trail[1][:name].should == "Posts"
        trail[1][:path].should == "/admin/posts"
      end

      context "when Post.find(1) doesn't exist" do
        it "should have a link to /admin/posts/1" do
          trail[2][:name].should == "1"
          trail[2][:path].should == "/admin/posts/1"
        end
      end

      context "when Post.find(1) does exist" do
        before do
          Post.stub!(:find).and_return{ mock(:display_name => "Hello World") }
        end
        it "should have a link to /admin/posts/1 using display name" do
          trail[2][:name].should == "Hello World"
          trail[2][:path].should == "/admin/posts/1"
        end
      end
    end

    context "when path '/admin/posts/1/coments/1'" do
      let(:path) { "/admin/posts/1/comments/1" }

      it "should have 4 items" do
        trail.size.should == 4
      end
      it "should have a link to /admin" do
        trail[0][:name].should == "Admin"
        trail[0][:path].should == "/admin"
      end
      it "should have a link to /admin/posts" do
        trail[1][:name].should == "Posts"
        trail[1][:path].should == "/admin/posts"
      end
      it "should have a link to /admin/posts/1" do
        trail[2][:name].should == "1"
        trail[2][:path].should == "/admin/posts/1"
      end
      it "should have a link to /admin/posts/1/comments" do
        trail[3][:name].should == "Comments"
        trail[3][:path].should == "/admin/posts/1/comments"
      end
    end

  end
end
