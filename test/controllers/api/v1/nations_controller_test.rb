require "test_helper"

class Api::V1::NationsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get api_v1_nations_index_url
    assert_response :success
  end

  test "should get show" do
    get api_v1_nations_show_url
    assert_response :success
  end

  test "should get create" do
    get api_v1_nations_create_url
    assert_response :success
  end
end
