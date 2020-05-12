require 'test_helper'

class Web::DevelopersControllerTest < ActionController::TestCase
  test 'should get new' do
    get :new
    assert_response :success
  end

  test 'should post create' do
    attrs = attributes_for(:developer)
    post :create, params: { developer: attrs }
    current_user = Developer.find_by!(email: attrs[:email])

    assert_response :redirect
    assert_equal current_user['email'], attrs[:email]
    assert_equal current_user['first_name'], attrs[:first_name]
    assert_equal current_user['last_name'], attrs[:last_name]
  end
end
