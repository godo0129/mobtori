require 'test_helper'

class GoogleCalendarControllerTest < ActionDispatch::IntegrationTest
  test "should get top" do
    get google_calendar_top_url
    assert_response :success
  end

end
