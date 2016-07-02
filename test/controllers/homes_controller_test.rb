require 'test_helper'

class HomesControllerTest < ActionController::TestCase
  test 'shows home page' do
    get :show
    assert_response :success
    assert_template :show
  end
end
