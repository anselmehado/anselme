require "application_system_test_case"

class EntresTest < ApplicationSystemTestCase
  setup do
    @entre = entres(:one)
  end

  test "visiting the index" do
    visit entres_url
    assert_selector "h1", text: "Entres"
  end

  test "creating a Entre" do
    visit entres_url
    click_on "New Entre"

    fill_in "Date", with: @entre.date
    fill_in "Montant in", with: @entre.montant_in
    fill_in "Motif", with: @entre.motif
    click_on "Create Entre"

    assert_text "Entre was successfully created"
    click_on "Back"
  end

  test "updating a Entre" do
    visit entres_url
    click_on "Edit", match: :first

    fill_in "Date", with: @entre.date
    fill_in "Montant in", with: @entre.montant_in
    fill_in "Motif", with: @entre.motif
    click_on "Update Entre"

    assert_text "Entre was successfully updated"
    click_on "Back"
  end

  test "destroying a Entre" do
    visit entres_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Entre was successfully destroyed"
  end
end
