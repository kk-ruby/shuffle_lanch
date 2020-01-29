require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get shuffle" do
    get home_shuffle_url
    assert_response :success
  end

end
