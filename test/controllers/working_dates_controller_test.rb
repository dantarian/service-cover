require 'test_helper'

class WorkingDatesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @working_date = working_dates(:one)
  end

  test "should get index" do
    get working_dates_url
    assert_response :success
  end

  test "should get new" do
    get new_working_date_url
    assert_response :success
  end

  test "should create working_date" do
    assert_difference('WorkingDate.count') do
      post working_dates_url, params: { working_date: { working_date: @working_date.working_date } }
    end

    assert_redirected_to working_date_url(WorkingDate.last)
  end

  test "should show working_date" do
    get working_date_url(@working_date)
    assert_response :success
  end

  test "should get edit" do
    get edit_working_date_url(@working_date)
    assert_response :success
  end

  test "should update working_date" do
    patch working_date_url(@working_date), params: { working_date: { working_date: @working_date.working_date } }
    assert_redirected_to working_date_url(@working_date)
  end

  test "should destroy working_date" do
    assert_difference('WorkingDate.count', -1) do
      delete working_date_url(@working_date)
    end

    assert_redirected_to working_dates_url
  end
end
