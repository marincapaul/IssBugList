require "test_helper"

class BugsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get bugs_create_url
    assert_response :success
  end

  test "should get destroy" do
    get bugs_destroy_url
    assert_response :success
  end
end
