require "application_system_test_case"

class BallonfahrersTest < ApplicationSystemTestCase
  setup do
    @ballonfahrer = ballonfahrers(:one)
  end

  test "visiting the index" do
    visit ballonfahrers_url
    assert_selector "h1", text: "Ballonfahrers"
  end

  test "creating a Ballonfahrer" do
    visit ballonfahrers_url
    click_on "New Ballonfahrer"

    fill_in "Geburtstag", with: @ballonfahrer.geburtstag
    fill_in "Name", with: @ballonfahrer.name
    fill_in "Tel", with: @ballonfahrer.tel
    fill_in "Uebermich", with: @ballonfahrer.uebermich
    click_on "Create Ballonfahrer"

    assert_text "Ballonfahrer was successfully created"
    click_on "Back"
  end

  test "updating a Ballonfahrer" do
    visit ballonfahrers_url
    click_on "Edit", match: :first

    fill_in "Geburtstag", with: @ballonfahrer.geburtstag
    fill_in "Name", with: @ballonfahrer.name
    fill_in "Tel", with: @ballonfahrer.tel
    fill_in "Uebermich", with: @ballonfahrer.uebermich
    click_on "Update Ballonfahrer"

    assert_text "Ballonfahrer was successfully updated"
    click_on "Back"
  end

  test "destroying a Ballonfahrer" do
    visit ballonfahrers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Ballonfahrer was successfully destroyed"
  end
end
