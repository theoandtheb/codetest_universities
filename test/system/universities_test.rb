require "application_system_test_case"

class UniversitiesTest < ApplicationSystemTestCase
  setup do
    @university = universities(:one)
  end

  test "visiting the index" do
    visit universities_url
    assert_selector "h1", text: "Universities"
  end

  test "creating a University" do
    visit universities_url
    click_on "New University"

    fill_in "Alpha two code", with: @university.alpha_two_code
    fill_in "Country", with: @university.country
    fill_in "Name", with: @university.name
    fill_in "State province", with: @university.state_province
    click_on "Create University"

    assert_text "University was successfully created"
    click_on "Back"
  end

  test "updating a University" do
    visit universities_url
    click_on "Edit", match: :first

    fill_in "Alpha two code", with: @university.alpha_two_code
    fill_in "Country", with: @university.country
    fill_in "Name", with: @university.name
    fill_in "State province", with: @university.state_province
    click_on "Update University"

    assert_text "University was successfully updated"
    click_on "Back"
  end

  test "destroying a University" do
    visit universities_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "University was successfully destroyed"
  end
end