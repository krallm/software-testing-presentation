require 'test_helper'

class WelcomeControllerTest < ActionController::TestCase
  test "index should redirect to login page if user not signed in" do
    get :index
    assert_response :success
    assert_redirected_to new_user_session_path
  end

  test "index shouldn't redirect if signed in" do
    user = users :one
    sign_in user
    get :index
    assert_response :success
  end
end
