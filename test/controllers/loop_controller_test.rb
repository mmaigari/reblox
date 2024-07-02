require "test_helper"

class LoopControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get loop_new_url
    assert_response :success
  end

  test "should get create" do
    get loop_create_url
    assert_response :success
  end

  test "should get index" do
    get loop_index_url
    assert_response :success
  end
end
