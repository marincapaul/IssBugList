require "test_helper"

class TesterControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get tester_show_url
    assert_response :success
  end

  test "should get index" do
    get tester_index_url
    assert_response :success
  end
end
