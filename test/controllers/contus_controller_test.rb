require "test_helper"

class ContusControllerTest < ActionDispatch::IntegrationTest
  setup do
    @contu = contus(:one)
  end

  test "should get index" do
    get contus_url
    assert_response :success
  end

  test "should get new" do
    get new_contu_url
    assert_response :success
  end

  test "should create contu" do
    assert_difference("Contu.count") do
      post contus_url, params: { contu: { email: @contu.email, message: @contu.message, name: @contu.name, subject: @contu.subject } }
    end

    assert_redirected_to contu_url(Contu.last)
  end

  test "should show contu" do
    get contu_url(@contu)
    assert_response :success
  end

  test "should get edit" do
    get edit_contu_url(@contu)
    assert_response :success
  end

  test "should update contu" do
    patch contu_url(@contu), params: { contu: { email: @contu.email, message: @contu.message, name: @contu.name, subject: @contu.subject } }
    assert_redirected_to contu_url(@contu)
  end

  test "should destroy contu" do
    assert_difference("Contu.count", -1) do
      delete contu_url(@contu)
    end

    assert_redirected_to contus_url
  end
end
