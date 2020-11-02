require "application_system_test_case"

class AdditionalInformationsTest < ApplicationSystemTestCase
  setup do
    @additional_information = additional_informations(:one)
  end

  test "visiting the index" do
    visit additional_informations_url
    assert_selector "h1", text: "Additional Informations"
  end

  test "creating a Additional information" do
    visit additional_informations_url
    click_on "New Additional Information"

    fill_in "Achievements", with: @additional_information.achievements
    fill_in "Hobbies", with: @additional_information.hobbies
    fill_in "Strengths", with: @additional_information.strengths
    fill_in "Weaknesses", with: @additional_information.weaknesses
    click_on "Create Additional information"

    assert_text "Additional information was successfully created"
    click_on "Back"
  end

  test "updating a Additional information" do
    visit additional_informations_url
    click_on "Edit", match: :first

    fill_in "Achievements", with: @additional_information.achievements
    fill_in "Hobbies", with: @additional_information.hobbies
    fill_in "Strengths", with: @additional_information.strengths
    fill_in "Weaknesses", with: @additional_information.weaknesses
    click_on "Update Additional information"

    assert_text "Additional information was successfully updated"
    click_on "Back"
  end

  test "destroying a Additional information" do
    visit additional_informations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Additional information was successfully destroyed"
  end
end
