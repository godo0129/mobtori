require 'test_helper'

class SevenRulesControllerTest < ActionDispatch::IntegrationTest
  test "should get top" do
    get seven_rules_top_url
    assert_response :success
  end

end
