require 'test_helper'

class Web::DevelopersControllerTest < ActionController::TestCase
  test 'should get new' do
    get :new
    assert_response :success
  end

  test 'should post create' do 
    developer = create(:developer, attributes_for(:developer))
    attrs = {
      email: developer.email,
      password: developer.password,
    }
    post :create, params: { developer: attrs }
    assert_response :success
  end
end
