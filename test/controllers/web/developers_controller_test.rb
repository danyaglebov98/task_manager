require 'test_helper'

class Web::DevelopersControllerTest < ActionController::TestCase
  test 'should get new' do
    get :new
    assert_response :success
  end

  test 'should post create' do
    developer = create(:developer)
    current_user = Developer.find_by!(email: developer.email)

    post :create, params: { developer: attributes_for(:developer) }
    assert_response :redirect
    assert_equal developer.email, current_user['email']
    assert_equal developer.first_name, current_user['first_name']
    assert_equal developer.last_name, current_user['last_name']
  end
end
