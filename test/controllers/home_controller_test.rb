require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get home_index_url
    assert_response :success
  end

  test "should get inquiry" do
    get home_inquiry_url
    assert_response :success
  end

end
