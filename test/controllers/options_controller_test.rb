require 'test_helper'

class OptionsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get options_index_url
    assert_response :success
  end

  test "should get show" do
    get options_show_url
    assert_response :success
  end

  test "should get new" do
    get options_new_url
    assert_response :success
  end

  test "should get create" do
    get options_create_url
    assert_response :success
  end

  test "should get edit" do
    get options_edit_url
    assert_response :success
  end

  test "should get update" do
    get options_update_url
    assert_response :success
  end

  test "should get destroy" do
    get options_destroy_url
    assert_response :success
  end

end
