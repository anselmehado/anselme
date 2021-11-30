require "application_system_test_case"

class EntreesTest < ApplicationSystemTestCase
  setup do
    @entree = entrees(:one)
  end

  test "visiting the index" do
    visit entrees_url
    assert_selector "h1", text: "Entrees"
  end

  test "creating a Entree" do
    visit entrees_url
    click_on "New Entree"

    fill_in "Date", with: @entree.date
    fill_in "Montantin", with: @entree.montantin
    fill_in "Motif", with: @entree.motif
    click_on "Create Entree"

    assert_text "Entree was successfully created"
    click_on "Back"
  end

  test "updating a Entree" do
    visit entrees_url
    click_on "Edit", match: :first

    fill_in "Date", with: @entree.date
    fill_in "Montantin", with: @entree.montantin
    fill_in "Motif", with: @entree.motif
    click_on "Update Entree"

    assert_text "Entree was successfully updated"
    click_on "Back"
  end

  test "destroying a Entree" do
    visit entrees_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Entree was successfully destroyed"
  end
end
