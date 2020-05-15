require 'test_helper'

class Admin::UsersControllerTest < ActionController::TestCase
  setup do
    admin = create(:admin)
    sign_in admin
  end

  test 'should get edit' do
    user = create(:user)
    get :edit, params: { id: user.id }
    assert_response :success
  end

  test 'should get new' do
    get :new
    assert_response :success
  end

  test 'should get index' do
    get :index
    assert_response :success
  end

  test 'should get show' do
    user = create(:user)
    get :show, params: { id: user.id }
    assert_response :success
  end

  test 'should post create' do
    attrs = attributes_for(:user)
    post :create, params: { user: attrs }
    current_user = User.find_by!(email: attrs[:email])
    assert_response :redirect
    assert_equal current_user['email'], attrs[:email]
    assert_equal current_user['first_name'], attrs[:first_name]
    assert_equal current_user['last_name'], attrs[:last_name]
  end

  test 'should patch update' do
    user = create(:user)
    attrs = attributes_for(:user)
    patch :update, params: { id: user.id, user: attrs }
    patched_user = User.find_by!(email: attrs[:email])
    assert_response :redirect
    assert_equal patched_user['email'], attrs[:email]
    assert_equal patched_user['first_name'], attrs[:first_name]
    assert_equal patched_user['last_name'], attrs[:last_name]
  end

  test 'should delete destroy' do
    user = create(:user)
    delete :destroy, params: {id: user.id }
    assert_response :redirect
    assert_not User.exists?(user.id)
  end
end
