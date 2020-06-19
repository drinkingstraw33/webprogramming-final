require 'test_helper'

class FoodcControllerTest < ActionDispatch::IntegrationTest
  test "should get listc" do
    get foodc_listc_url
    assert_response :success
  end

end
