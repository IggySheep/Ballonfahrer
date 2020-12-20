require "application_system_test_case"

class TerminsTest < ApplicationSystemTestCase
  setup do
    @termin = termins(:one)
  end

  test "visiting the index" do
    visit termins_url
    assert_selector "h1", text: "Termins"
  end

  test "creating a Termin" do
    visit termins_url
    click_on "New Termin"

    fill_in "Beschreibung", with: @termin.beschreibung
    fill_in "Datum", with: @termin.datum
    fill_in "Koch", with: @termin.koch
    fill_in "Title", with: @termin.title
    fill_in "Uhrzeit", with: @termin.uhrzeit
    click_on "Create Termin"

    assert_text "Termin was successfully created"
    click_on "Back"
  end

  test "updating a Termin" do
    visit termins_url
    click_on "Edit", match: :first

    fill_in "Beschreibung", with: @termin.beschreibung
    fill_in "Datum", with: @termin.datum
    fill_in "Koch", with: @termin.koch
    fill_in "Title", with: @termin.title
    fill_in "Uhrzeit", with: @termin.uhrzeit
    click_on "Update Termin"

    assert_text "Termin was successfully updated"
    click_on "Back"
  end

  test "destroying a Termin" do
    visit termins_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Termin was successfully destroyed"
  end
end
