require 'test_helper'

class WebcastsControllerTest < ActionController::TestCase
  setup do
    @webcast = webcasts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:webcasts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create webcast" do
    assert_difference('Webcast.count') do
      post :create, :webcast => @webcast.attributes
    end

    assert_redirected_to webcast_path(assigns(:webcast))
  end

  test "should show webcast" do
    get :show, :id => @webcast.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @webcast.to_param
    assert_response :success
  end

  test "should update webcast" do
    put :update, :id => @webcast.to_param, :webcast => @webcast.attributes
    assert_redirected_to webcast_path(assigns(:webcast))
  end

  test "should destroy webcast" do
    assert_difference('Webcast.count', -1) do
      delete :destroy, :id => @webcast.to_param
    end

    assert_redirected_to webcasts_path
  end
end
