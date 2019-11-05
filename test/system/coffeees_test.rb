require "application_system_test_case"

class CoffeeesTest < ApplicationSystemTestCase
  setup do
    @coffeee = coffeees(:one)
  end

  test "visiting the index" do
    visit coffeees_url
    assert_selector "h1", text: "Coffeees"
  end

  test "creating a Coffeee" do
    visit coffeees_url
    click_on "New Coffeee"

    fill_in "Desctrption", with: @coffeee.desctrption
    fill_in "Home", with: @coffeee.home
    fill_in "Img", with: @coffeee.img
    fill_in "Name", with: @coffeee.name
    fill_in "Something", with: @coffeee.something
    fill_in "Type", with: @coffeee.type
    click_on "Create Coffeee"

    assert_text "Coffeee was successfully created"
    click_on "Back"
  end

  test "updating a Coffeee" do
    visit coffeees_url
    click_on "Edit", match: :first

    fill_in "Desctrption", with: @coffeee.desctrption
    fill_in "Home", with: @coffeee.home
    fill_in "Img", with: @coffeee.img
    fill_in "Name", with: @coffeee.name
    fill_in "Something", with: @coffeee.something
    fill_in "Type", with: @coffeee.type
    click_on "Update Coffeee"

    assert_text "Coffeee was successfully updated"
    click_on "Back"
  end

  test "destroying a Coffeee" do
    visit coffeees_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Coffeee was successfully destroyed"
  end
end
