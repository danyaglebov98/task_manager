require 'test_helper'

class Web::DevelopersControllerTest < ActionController::TestCase
  test 'should get new' do
    get :new
    assert_response :success
  end

  test 'should post create' do
    new_developer = create(:developer)
    attrs = {
      first_name: new_developer.first_name,
      last_name: new_developer.last_name,
      email: new_developer.email,
      password: new_developer.password,
    }
    post :create, params: { developer: attributes_for(:developer) }
    assert_response :redirect

    post :create, params: { developer: attrs }
    assert_response :success
    assert_not_nil new_developer
    assert_not_empty attrs[:first_name]
    assert_not_empty attrs[:last_name]
    assert_not_empty attrs[:email]
    assert_not_empty attrs[:password]
  end
end
