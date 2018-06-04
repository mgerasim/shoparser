require 'test_helper'

class ParseControllerTest < ActionDispatch::IntegrationTest
  test "should get run" do
    get parse_run_url
    assert_response :success
  end

end
