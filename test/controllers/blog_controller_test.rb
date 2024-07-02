require "test_helper"

class BlogControllerTest < ActionDispatch::IntegrationTest
  test "should get what" do
    get blog_what_url
    assert_response :success
  end

  test "should get how" do
    get blog_how_url
    assert_response :success
  end

  test "should get future" do
    get blog_future_url
    assert_response :success
  end
end
