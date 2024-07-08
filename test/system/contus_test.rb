require "application_system_test_case"

class ContusTest < ApplicationSystemTestCase
  setup do
    @contu = contus(:one)
  end

  test "visiting the index" do
    visit contus_url
    assert_selector "h1", text: "Contus"
  end

  test "should create contu" do
    visit contus_url
    click_on "New contu"

    fill_in "Email", with: @contu.email
    fill_in "Message", with: @contu.message
    fill_in "Name", with: @contu.name
    fill_in "Subject", with: @contu.subject
    click_on "Create Contu"

    assert_text "Contu was successfully created"
    click_on "Back"
  end

  test "should update Contu" do
    visit contu_url(@contu)
    click_on "Edit this contu", match: :first

    fill_in "Email", with: @contu.email
    fill_in "Message", with: @contu.message
    fill_in "Name", with: @contu.name
    fill_in "Subject", with: @contu.subject
    click_on "Update Contu"

    assert_text "Contu was successfully updated"
    click_on "Back"
  end

  test "should destroy Contu" do
    visit contu_url(@contu)
    click_on "Destroy this contu", match: :first

    assert_text "Contu was successfully destroyed"
  end
end
