require 'test_helper'

class Web::DevelopersControllerTest < ActionController::TestCase
  test 'should get new' do
    get :new
    assert_response :success
  end

  test 'should post create' do
    attrs = attributes_for(:developer)
    current_user = Developer.where(email: attrs[:email])

    post :create, params: { developer: attrs }
    assert_response :redirect
    assert_equal attrs[:email], current_user[0]['email']
    assert_equal attrs[:first_name], current_user[0]['first_name']
    assert_equal attrs[:last_name], current_user[0]['last_name']
  end
end
