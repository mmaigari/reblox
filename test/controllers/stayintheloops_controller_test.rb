require "test_helper"

class StayintheloopsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @stayintheloop = stayintheloops(:one)
  end

  test "should get index" do
    get stayintheloops_url
    assert_response :success
  end

  test "should get new" do
    get new_stayintheloop_url
    assert_response :success
  end

  test "should create stayintheloop" do
    assert_difference("Stayintheloop.count") do
      post stayintheloops_url, params: { stayintheloop: { email: @stayintheloop.email, name: @stayintheloop.name } }
    end

    assert_redirected_to stayintheloop_url(Stayintheloop.last)
  end

  test "should show stayintheloop" do
    get stayintheloop_url(@stayintheloop)
    assert_response :success
  end

  test "should get edit" do
    get edit_stayintheloop_url(@stayintheloop)
    assert_response :success
  end

  test "should update stayintheloop" do
    patch stayintheloop_url(@stayintheloop), params: { stayintheloop: { email: @stayintheloop.email, name: @stayintheloop.name } }
    assert_redirected_to stayintheloop_url(@stayintheloop)
  end

  test "should destroy stayintheloop" do
    assert_difference("Stayintheloop.count", -1) do
      delete stayintheloop_url(@stayintheloop)
    end

    assert_redirected_to stayintheloops_url
  end
end
