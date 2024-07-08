require "application_system_test_case"

class StayintheloopsTest < ApplicationSystemTestCase
  setup do
    @stayintheloop = stayintheloops(:one)
  end

  test "visiting the index" do
    visit stayintheloops_url
    assert_selector "h1", text: "Stayintheloops"
  end

  test "should create stayintheloop" do
    visit stayintheloops_url
    click_on "New stayintheloop"

    fill_in "Email", with: @stayintheloop.email
    fill_in "Name", with: @stayintheloop.name
    click_on "Create Stayintheloop"

    assert_text "Stayintheloop was successfully created"
    click_on "Back"
  end

  test "should update Stayintheloop" do
    visit stayintheloop_url(@stayintheloop)
    click_on "Edit this stayintheloop", match: :first

    fill_in "Email", with: @stayintheloop.email
    fill_in "Name", with: @stayintheloop.name
    click_on "Update Stayintheloop"

    assert_text "Stayintheloop was successfully updated"
    click_on "Back"
  end

  test "should destroy Stayintheloop" do
    visit stayintheloop_url(@stayintheloop)
    click_on "Destroy this stayintheloop", match: :first

    assert_text "Stayintheloop was successfully destroyed"
  end
end
