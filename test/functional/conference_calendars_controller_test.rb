require 'test_helper'

class ConferenceCalendarsControllerTest < ActionController::TestCase
  setup do
    @conference_calendar = conference_calendars(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:conference_calendars)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create conference_calendar" do
    assert_difference('ConferenceCalendar.count') do
      post :create, :conference_calendar => @conference_calendar.attributes
    end

    assert_redirected_to conference_calendar_path(assigns(:conference_calendar))
  end

  test "should show conference_calendar" do
    get :show, :id => @conference_calendar.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @conference_calendar.to_param
    assert_response :success
  end

  test "should update conference_calendar" do
    put :update, :id => @conference_calendar.to_param, :conference_calendar => @conference_calendar.attributes
    assert_redirected_to conference_calendar_path(assigns(:conference_calendar))
  end

  test "should destroy conference_calendar" do
    assert_difference('ConferenceCalendar.count', -1) do
      delete :destroy, :id => @conference_calendar.to_param
    end

    assert_redirected_to conference_calendars_path
  end
end
