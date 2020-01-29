require "application_system_test_case"

class EmplosTest < ApplicationSystemTestCase
  setup do
    @emplo = emplos(:one)
  end

  test "visiting the index" do
    visit emplos_url
    assert_selector "h1", text: "Emplos"
  end

  test "creating a Emplo" do
    visit emplos_url
    click_on "New Emplo"

    fill_in "Last", with: @emplo.last
    fill_in "Name", with: @emplo.name
    fill_in "Section", with: @emplo.section
    click_on "Create Emplo"

    assert_text "Emplo was successfully created"
    click_on "Back"
  end

  test "updating a Emplo" do
    visit emplos_url
    click_on "Edit", match: :first

    fill_in "Last", with: @emplo.last
    fill_in "Name", with: @emplo.name
    fill_in "Section", with: @emplo.section
    click_on "Update Emplo"

    assert_text "Emplo was successfully updated"
    click_on "Back"
  end

  test "destroying a Emplo" do
    visit emplos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Emplo was successfully destroyed"
  end
end
