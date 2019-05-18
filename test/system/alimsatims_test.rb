require "application_system_test_case"

class AlimsatimsTest < ApplicationSystemTestCase
  setup do
    @alimsatim = alimsatims(:one)
  end

  test "visiting the index" do
    visit alimsatims_url
    assert_selector "h1", text: "Alimsatims"
  end

  test "creating a Alimsatim" do
    visit alimsatims_url
    click_on "New Alimsatim"

    fill_in "Bilgiler", with: @alimsatim.bilgiler
    fill_in "Fiyat", with: @alimsatim.fiyat
    fill_in "Urunadi", with: @alimsatim.urunadi
    click_on "Create Alimsatim"

    assert_text "Alimsatim was successfully created"
    click_on "Back"
  end

  test "updating a Alimsatim" do
    visit alimsatims_url
    click_on "Edit", match: :first

    fill_in "Bilgiler", with: @alimsatim.bilgiler
    fill_in "Fiyat", with: @alimsatim.fiyat
    fill_in "Urunadi", with: @alimsatim.urunadi
    click_on "Update Alimsatim"

    assert_text "Alimsatim was successfully updated"
    click_on "Back"
  end

  test "destroying a Alimsatim" do
    visit alimsatims_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Alimsatim was successfully destroyed"
  end
end
