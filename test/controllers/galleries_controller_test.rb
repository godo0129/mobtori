require 'test_helper'

class GalleriesControllerTest < ActionDispatch::IntegrationTest
  test "should get top" do
    get galleries_top_url
    assert_response :success
  end

end
