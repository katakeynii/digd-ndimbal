require "application_system_test_case"

class MairiesTest < ApplicationSystemTestCase
  setup do
    @mairy = mairies(:one)
  end

  test "visiting the index" do
    visit mairies_url
    assert_selector "h1", text: "Mairies"
  end

  test "should create mairie" do
    visit mairies_url
    click_on "New mairie"

    click_on "Create Mairie"

    assert_text "Mairie was successfully created"
    click_on "Back"
  end

  test "should update Mairie" do
    visit mairy_url(@mairy)
    click_on "Edit this mairie", match: :first

    click_on "Update Mairie"

    assert_text "Mairie was successfully updated"
    click_on "Back"
  end

  test "should destroy Mairie" do
    visit mairy_url(@mairy)
    click_on "Destroy this mairie", match: :first

    assert_text "Mairie was successfully destroyed"
  end
end
