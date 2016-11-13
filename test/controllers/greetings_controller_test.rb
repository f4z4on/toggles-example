require 'test_helper'

class GreetingsControllerTest < ActionDispatch::IntegrationTest
  test "show a greeting on root URL" do
    get root_url
    assert_response :success
    assert_match /\bHi\b/, @response.body
    assert_match /\bPrague\s+Ruby\s+Meetup\b/, @response.body
  end
end
