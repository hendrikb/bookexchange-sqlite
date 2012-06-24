require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  setup do
    @input_attributes = {
      user_name: "hendrikasdasas",
      password: "teeeeest",
      email: "justarandom@emailaddress.xxz",
      description: "test description",
      full_name: "Hendrik Bergunde",
      age: 27
    }
    @user = users(:one)
  end

#  test "should get index" do
#    get :index
#    assert_response :success
#    assert_not_nil assigns(:users)
#  end

#  test "should get new" do
#    get :new
#    assert_response :success
#  end

  test "should create user" do
    assert_difference('User.count') do
      # post :create, user: @input_attributes
      User.create(@input_attributes)
    end

#    assert_redirected_to user_path(assigns(:user))
  end

#  test "should show user" do
#    get :show, id: @user
#    assert_response :success
#  end

#  test "should get edit" do
#    get :edit, id: @user
#    assert_response :success
#  end

#  test "should update user" do
#    put :update, id: @user, user: { age: @user.age, description: @user.description, email: @user.email, password: @user.password, user_name: @user.user_name }
#    put :update, id: @user.to_param, user: @input_attributes
#    assert_redirected_to user_path(assigns(:user))
#  end

  test "should destroy user" do
    assert_difference('User.count', -1) do
      # delete :destroy, id: User.find_by_user_name(@input_attributes[:user_name])
      u = User.all.first
      User.destroy(u)
    end

#    assert_redirected_to users_path
  end
end
