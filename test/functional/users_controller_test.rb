require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  setup do
    @input_attributes = {
      user_name: "hendrik",
#      password: "teeeeest",
#      password_confirmation: "teeeeest",
      password_digest: "123",
      email: "justarandom@emailaddress.xxz",
      description: "test description",
      age: 27
    }
    @user = users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user" do
    assert_difference('User.count') do
      # post :create, user: { age: @user.age, description: @user.description, email: @user.email, password: @user.password, user_name: @user.user_name }
      post :create, user: @input_attributes
    end

    assert_redirected_to user_path(assigns(:user))
  end

  test "should show user" do
    get :show, id: @user
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user
    assert_response :success
  end

  test "should update user" do
#    put :update, id: @user, user: { age: @user.age, description: @user.description, email: @user.email, password: @user.password, user_name: @user.user_name }
    put :update, id: @user.to_param, user: @input_attributes
    assert_redirected_to user_path(assigns(:user))
  end

  test "should destroy user" do
    assert_difference('User.count', -1) do
      delete :destroy, id: @user
    end

    assert_redirected_to users_path
  end
end
