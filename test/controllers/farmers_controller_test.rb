require 'test_helper'

class FarmersControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
