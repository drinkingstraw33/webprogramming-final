require 'test_helper'

class FoodbControllerTest < ActionDispatch::IntegrationTest
  test "should get listb" do
    get foodb_listb_url
    assert_response :success
  end

end
