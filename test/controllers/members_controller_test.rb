require 'test_helper'

class MembersControllerTest < ActionDispatch::IntegrationTest
  test "should get top" do
    get members_top_url
    assert_response :success
  end

end
