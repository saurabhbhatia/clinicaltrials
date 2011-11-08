require 'test_helper'

class DrugInfosControllerTest < ActionController::TestCase
  setup do
    @drug_info = drug_infos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:drug_infos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create drug_info" do
    assert_difference('DrugInfo.count') do
      post :create, :drug_info => @drug_info.attributes
    end

    assert_redirected_to drug_info_path(assigns(:drug_info))
  end

  test "should show drug_info" do
    get :show, :id => @drug_info.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @drug_info.to_param
    assert_response :success
  end

  test "should update drug_info" do
    put :update, :id => @drug_info.to_param, :drug_info => @drug_info.attributes
    assert_redirected_to drug_info_path(assigns(:drug_info))
  end

  test "should destroy drug_info" do
    assert_difference('DrugInfo.count', -1) do
      delete :destroy, :id => @drug_info.to_param
    end

    assert_redirected_to drug_infos_path
  end
end
