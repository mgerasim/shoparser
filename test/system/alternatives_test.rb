require "application_system_test_case"

class AlternativesTest < ApplicationSystemTestCase
  setup do
    @alternative = alternatives(:one)
  end

  test "visiting the index" do
    visit alternatives_url
    assert_selector "h1", text: "Alternatives"
  end

  test "creating a Alternative" do
    visit alternatives_url
    click_on "New Alternative"

    fill_in "Tovar", with: @alternative.tovar_id
    fill_in "Value", with: @alternative.value
    fill_in "Xpath", with: @alternative.xpath
    click_on "Create Alternative"

    assert_text "Alternative was successfully created"
    click_on "Back"
  end

  test "updating a Alternative" do
    visit alternatives_url
    click_on "Edit", match: :first

    fill_in "Tovar", with: @alternative.tovar_id
    fill_in "Value", with: @alternative.value
    fill_in "Xpath", with: @alternative.xpath
    click_on "Update Alternative"

    assert_text "Alternative was successfully updated"
    click_on "Back"
  end

  test "destroying a Alternative" do
    visit alternatives_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Alternative was successfully destroyed"
  end
end
