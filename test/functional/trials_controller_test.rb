require 'test_helper'

class TrialsControllerTest < ActionController::TestCase
  setup do
    @trial = trials(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:trials)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create trial" do
    assert_difference('Trial.count') do
      post :create, :trial => @trial.attributes
    end

    assert_redirected_to trial_path(assigns(:trial))
  end

  test "should show trial" do
    get :show, :id => @trial.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @trial.to_param
    assert_response :success
  end

  test "should update trial" do
    put :update, :id => @trial.to_param, :trial => @trial.attributes
    assert_redirected_to trial_path(assigns(:trial))
  end

  test "should destroy trial" do
    assert_difference('Trial.count', -1) do
      delete :destroy, :id => @trial.to_param
    end

    assert_redirected_to trials_path
  end
end
