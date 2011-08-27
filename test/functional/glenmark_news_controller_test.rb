require 'test_helper'

class GlenmarkNewsControllerTest < ActionController::TestCase
  setup do
    @glenmark_news = glenmark_news(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:glenmark_news)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create glenmark_news" do
    assert_difference('GlenmarkNews.count') do
      post :create, :glenmark_news => @glenmark_news.attributes
    end

    assert_redirected_to glenmark_news_path(assigns(:glenmark_news))
  end

  test "should show glenmark_news" do
    get :show, :id => @glenmark_news.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @glenmark_news.to_param
    assert_response :success
  end

  test "should update glenmark_news" do
    put :update, :id => @glenmark_news.to_param, :glenmark_news => @glenmark_news.attributes
    assert_redirected_to glenmark_news_path(assigns(:glenmark_news))
  end

  test "should destroy glenmark_news" do
    assert_difference('GlenmarkNews.count', -1) do
      delete :destroy, :id => @glenmark_news.to_param
    end

    assert_redirected_to glenmark_news_index_path
  end
end
