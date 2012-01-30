require 'test_helper'

class CvnsControllerTest < ActionController::TestCase
  setup do
    @cvn = cvns(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cvns)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cvn" do
    assert_difference('Cvn.count') do
      post :create, :cvn => @cvn.attributes
    end

    assert_redirected_to cvn_path(assigns(:cvn))
  end

  test "should show cvn" do
    get :show, :id => @cvn.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @cvn.to_param
    assert_response :success
  end

  test "should update cvn" do
    put :update, :id => @cvn.to_param, :cvn => @cvn.attributes
    assert_redirected_to cvn_path(assigns(:cvn))
  end

  test "should destroy cvn" do
    assert_difference('Cvn.count', -1) do
      delete :destroy, :id => @cvn.to_param
    end

    assert_redirected_to cvns_path
  end
end
