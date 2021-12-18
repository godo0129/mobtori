require 'test_helper'

class SpreadsheetsControllerTest < ActionDispatch::IntegrationTest
  test "should get read" do
    get spreadsheets_read_url
    assert_response :success
  end

end
