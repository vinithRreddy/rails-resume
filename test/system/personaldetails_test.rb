require "application_system_test_case"

class PersonaldetailsTest < ApplicationSystemTestCase
  setup do
    @personaldetail = personaldetails(:one)
  end

  test "visiting the index" do
    visit personaldetails_url
    assert_selector "h1", text: "Personaldetails"
  end

  test "creating a Personaldetail" do
    visit personaldetails_url
    click_on "New Personaldetail"

    fill_in "City", with: @personaldetail.city
    fill_in "First name", with: @personaldetail.first_name
    fill_in "Gmail", with: @personaldetail.gmail
    fill_in "Last name", with: @personaldetail.last_name
    fill_in "Mobile no", with: @personaldetail.mobile_no
    fill_in "Pin code", with: @personaldetail.pin_code
    fill_in "State", with: @personaldetail.state
    click_on "Create Personaldetail"

    assert_text "Personaldetail was successfully created"
    click_on "Back"
  end

  test "updating a Personaldetail" do
    visit personaldetails_url
    click_on "Edit", match: :first

    fill_in "City", with: @personaldetail.city
    fill_in "First name", with: @personaldetail.first_name
    fill_in "Gmail", with: @personaldetail.gmail
    fill_in "Last name", with: @personaldetail.last_name
    fill_in "Mobile no", with: @personaldetail.mobile_no
    fill_in "Pin code", with: @personaldetail.pin_code
    fill_in "State", with: @personaldetail.state
    click_on "Update Personaldetail"

    assert_text "Personaldetail was successfully updated"
    click_on "Back"
  end

  test "destroying a Personaldetail" do
    visit personaldetails_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Personaldetail was successfully destroyed"
  end
end
