require 'test_helper'

class HoagiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @hoagie = hoagies(:one)
  end

  test "should get index" do
    get hoagies_url
    assert_response :success
  end

  test "should get new" do
    get new_hoagie_url
    assert_response :success
  end

  test "should create hoagie" do
    assert_difference('Hoagie.count') do
      post hoagies_url, params: { hoagie: { name: @hoagie.name } }
    end

    assert_redirected_to hoagie_url(Hoagie.last)
  end

  test "should show hoagie" do
    get hoagie_url(@hoagie)
    assert_response :success
  end

  test "should get edit" do
    get edit_hoagie_url(@hoagie)
    assert_response :success
  end

  test "should update hoagie" do
    patch hoagie_url(@hoagie), params: { hoagie: { name: @hoagie.name } }
    assert_redirected_to hoagie_url(@hoagie)
  end

  test "should destroy hoagie" do
    assert_difference('Hoagie.count', -1) do
      delete hoagie_url(@hoagie)
    end

    assert_redirected_to hoagies_url
  end
end
