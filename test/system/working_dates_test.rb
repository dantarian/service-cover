require "application_system_test_case"

class WorkingDatesTest < ApplicationSystemTestCase
  setup do
    @working_date = working_dates(:one)
  end

  test "visiting the index" do
    visit working_dates_url
    assert_selector "h1", text: "Working Dates"
  end

  test "creating a Working date" do
    visit working_dates_url
    click_on "New Working Date"

    fill_in "Working date", with: @working_date.working_date
    click_on "Create Working date"

    assert_text "Working date was successfully created"
    click_on "Back"
  end

  test "updating a Working date" do
    visit working_dates_url
    click_on "Edit", match: :first

    fill_in "Working date", with: @working_date.working_date
    click_on "Update Working date"

    assert_text "Working date was successfully updated"
    click_on "Back"
  end

  test "destroying a Working date" do
    visit working_dates_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Working date was successfully destroyed"
  end
end
