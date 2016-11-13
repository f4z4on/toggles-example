require 'test_helper'

class GreetingsControllerTest < ActionDispatch::IntegrationTest
  test "show a greeting on root URL" do
    disable 'saas_greet' do
      get root_url
      assert_response :success
      assert_match /\bHi\b/, @response.body
      assert_match /\bPrague\s+Ruby\s+Meetup\b/, @response.body
    end
  end

  test "show an apology on root URL while transitioning to Greet Service" do
    enable 'saas_greet' do
      get root_url
      assert_response :success
      assert_match /\bsorry\b/, @response.body
    end
  end
end
