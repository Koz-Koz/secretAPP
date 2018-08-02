require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get users_new_url
    assert_response :success
  end

  test "should get create" do
    get users_create_url
    assert_response :success
  end

  test "should get for" do
    get users_for_url
    assert_response :success
  end

  test "should get for_create" do
    get users_for_create_url
    assert_response :success
  end

  test "should get error" do
    get users_error_url
    assert_response :success
  end

  test "should get destroy" do
    get users_destroy_url
    assert_response :success
  end

end
