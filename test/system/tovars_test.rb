require "application_system_test_case"

class TovarsTest < ApplicationSystemTestCase
  setup do
    @tovar = tovars(:one)
  end

  test "visiting the index" do
    visit tovars_url
    assert_selector "h1", text: "Tovars"
  end

  test "creating a Tovar" do
    visit tovars_url
    click_on "New Tovar"

    fill_in "Name", with: @tovar.name
    click_on "Create Tovar"

    assert_text "Tovar was successfully created"
    click_on "Back"
  end

  test "updating a Tovar" do
    visit tovars_url
    click_on "Edit", match: :first

    fill_in "Name", with: @tovar.name
    click_on "Update Tovar"

    assert_text "Tovar was successfully updated"
    click_on "Back"
  end

  test "destroying a Tovar" do
    visit tovars_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tovar was successfully destroyed"
  end
end
