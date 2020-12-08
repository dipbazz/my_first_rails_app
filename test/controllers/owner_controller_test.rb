require 'test_helper'

class OwnerControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get owner_index_url
    assert_response :success
  end

  test "should get show" do
    get owner_show_url
    assert_response :success
  end

  test "should get edit" do
    get owner_edit_url
    assert_response :success
  end

  test "should get update" do
    get owner_update_url
    assert_response :success
  end

  test "should get delete" do
    get owner_delete_url
    assert_response :success
  end

end
