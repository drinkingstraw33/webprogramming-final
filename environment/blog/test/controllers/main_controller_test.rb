require 'test_helper'

class MainControllerTest < ActionDispatch::IntegrationTest
  test "should get entrance" do
    get main_entrance_url
    assert_response :success
  end

end
