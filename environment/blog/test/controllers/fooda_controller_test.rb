require 'test_helper'

class FoodaControllerTest < ActionDispatch::IntegrationTest
  test "should get lista" do
    get fooda_lista_url
    assert_response :success
  end

end
