require "test_helper"

class BlogControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get blog_index_url
    assert_response :success
  end

  test "should get get-started" do
    get blog_get-started_url
    assert_response :success
  end

  test "should get what-is" do
    get blog_what-is_url
    assert_response :success
  end

  test "should get future-of" do
    get blog_future-of_url
    assert_response :success
  end
end
