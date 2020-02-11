require 'test_helper'

class WorkshopControllerTest < ActionDispatch::IntegrationTest
  test "should get shuffle" do
    get workshop_shuffle_url
    assert_response :success
  end

end
