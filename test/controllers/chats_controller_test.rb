require 'test_helper'

class ChatsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get chats_index_url
    assert_response :success
  end

  test "should get show" do
    get chats_show_url
    assert_response :success
  end

  test "should get create" do
    get chats_create_url
    assert_response :success
  end

  test "should get block" do
    get chats_block_url
    assert_response :success
  end

  test "should get execute" do
    get chats_execute_url
    assert_response :success
  end

end
