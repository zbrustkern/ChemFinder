require 'test_helper'

class HomControllerTest < ActionController::TestCase
  test "should get idex" do
    get :idex
    assert_response :success
  end

end
