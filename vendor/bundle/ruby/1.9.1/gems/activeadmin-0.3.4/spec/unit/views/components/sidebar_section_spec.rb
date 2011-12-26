require 'spec_helper'

describe ActiveAdmin::Views::SidebarSection do

  setup_arbre_context!

  let(:section) do
    ActiveAdmin::SidebarSection.new(:help) do
      span "Help Me"
    end
  end

  let(:html) do
    sidebar_section(section)
  end

  it "should have a title h3" do
    html.find_by_tag("h3").first.content.should == "Help"
  end

  it "should have the class of 'sidebar_section'" do
    html.class_list.should include("sidebar_section")
  end

  it "should have an id based on the title" do
    html.id.should == "help_sidebar_section"
  end

  it "should have a contents div" do
    html.find_by_tag("div").first.class_list.should include("panel_contents")
  end

  it "should add children to the contents div" do
    html.find_by_tag("span").first.parent.should == html.find_by_tag("div").first
  end

end
