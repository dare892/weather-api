require "application_system_test_case"

class ApiKeysTest < ApplicationSystemTestCase
  setup do
    @api_key = api_keys(:one)
  end

  test "visiting the index" do
    visit api_keys_url
    assert_selector "h1", text: "Api Keys"
  end

  test "creating a Api key" do
    visit api_keys_url
    click_on "New Api Key"

    fill_in "Expiration", with: @api_key.expiration
    fill_in "Name", with: @api_key.name
    fill_in "Token", with: @api_key.token
    fill_in "Used", with: @api_key.used
    fill_in "User", with: @api_key.user_id
    click_on "Create Api key"

    assert_text "Api key was successfully created"
    click_on "Back"
  end

  test "updating a Api key" do
    visit api_keys_url
    click_on "Edit", match: :first

    fill_in "Expiration", with: @api_key.expiration
    fill_in "Name", with: @api_key.name
    fill_in "Token", with: @api_key.token
    fill_in "Used", with: @api_key.used
    fill_in "User", with: @api_key.user_id
    click_on "Update Api key"

    assert_text "Api key was successfully updated"
    click_on "Back"
  end

  test "destroying a Api key" do
    visit api_keys_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Api key was successfully destroyed"
  end
end
