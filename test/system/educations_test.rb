require "application_system_test_case"

class EducationsTest < ApplicationSystemTestCase
  setup do
    @education = educations(:one)
  end

  test "visiting the index" do
    visit educations_url
    assert_selector "h1", text: "Educations"
  end

  test "creating a Education" do
    visit educations_url
    click_on "New Education"

    fill_in "End date", with: @education.end_date
    fill_in "Institute name", with: @education.institute_name
    fill_in "Marks", with: @education.marks
    fill_in "Qualification", with: @education.qualification
    fill_in "Specification", with: @education.specification
    fill_in "Start date", with: @education.start_date
    click_on "Create Education"

    assert_text "Education was successfully created"
    click_on "Back"
  end

  test "updating a Education" do
    visit educations_url
    click_on "Edit", match: :first

    fill_in "End date", with: @education.end_date
    fill_in "Institute name", with: @education.institute_name
    fill_in "Marks", with: @education.marks
    fill_in "Qualification", with: @education.qualification
    fill_in "Specification", with: @education.specification
    fill_in "Start date", with: @education.start_date
    click_on "Update Education"

    assert_text "Education was successfully updated"
    click_on "Back"
  end

  test "destroying a Education" do
    visit educations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Education was successfully destroyed"
  end
end
