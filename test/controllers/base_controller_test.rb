require "test_helper"

class BaseControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get base_home_url
    assert_response :success
  end

  test "should get about" do
    get base_about_url
    assert_response :success
  end

  test "should get contact" do
    get base_contact_url
    assert_response :success
  end

  test "should get play" do
    get base_play_url
    assert_response :success
  end
end
