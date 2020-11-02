require 'test_helper'

class PersonaldetailsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @personaldetail = personaldetails(:one)
  end

  test "should get index" do
    get personaldetails_url
    assert_response :success
  end

  test "should get new" do
    get new_personaldetail_url
    assert_response :success
  end

  test "should create personaldetail" do
    assert_difference('Personaldetail.count') do
      post personaldetails_url, params: { personaldetail: { city: @personaldetail.city, first_name: @personaldetail.first_name, gmail: @personaldetail.gmail, last_name: @personaldetail.last_name, mobile_no: @personaldetail.mobile_no, pin_code: @personaldetail.pin_code, state: @personaldetail.state } }
    end

    assert_redirected_to personaldetail_url(Personaldetail.last)
  end

  test "should show personaldetail" do
    get personaldetail_url(@personaldetail)
    assert_response :success
  end

  test "should get edit" do
    get edit_personaldetail_url(@personaldetail)
    assert_response :success
  end

  test "should update personaldetail" do
    patch personaldetail_url(@personaldetail), params: { personaldetail: { city: @personaldetail.city, first_name: @personaldetail.first_name, gmail: @personaldetail.gmail, last_name: @personaldetail.last_name, mobile_no: @personaldetail.mobile_no, pin_code: @personaldetail.pin_code, state: @personaldetail.state } }
    assert_redirected_to personaldetail_url(@personaldetail)
  end

  test "should destroy personaldetail" do
    assert_difference('Personaldetail.count', -1) do
      delete personaldetail_url(@personaldetail)
    end

    assert_redirected_to personaldetails_url
  end
end
