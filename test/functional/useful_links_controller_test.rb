require 'test_helper'

class UsefulLinksControllerTest < ActionController::TestCase
  setup do
    @useful_link = useful_links(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:useful_links)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create useful_link" do
    assert_difference('UsefulLink.count') do
      post :create, :useful_link => @useful_link.attributes
    end

    assert_redirected_to useful_link_path(assigns(:useful_link))
  end

  test "should show useful_link" do
    get :show, :id => @useful_link.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @useful_link.to_param
    assert_response :success
  end

  test "should update useful_link" do
    put :update, :id => @useful_link.to_param, :useful_link => @useful_link.attributes
    assert_redirected_to useful_link_path(assigns(:useful_link))
  end

  test "should destroy useful_link" do
    assert_difference('UsefulLink.count', -1) do
      delete :destroy, :id => @useful_link.to_param
    end

    assert_redirected_to useful_links_path
  end
end
