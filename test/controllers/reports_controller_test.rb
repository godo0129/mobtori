require 'test_helper'

class ReportsControllerTest < ActionDispatch::IntegrationTest
  test "should get top" do
    get reports_top_url
    assert_response :success
  end

end
