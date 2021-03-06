require 'test_helper'

class PersonajeSf4sControllerTest < ActionController::TestCase
  setup do
    @personaje_sf4 = personaje_sf4s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:personaje_sf4s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create personaje_sf4" do
    assert_difference('PersonajeSf4.count') do
      post :create, :personaje_sf4 => @personaje_sf4.attributes
    end

    assert_redirected_to personaje_sf4_path(assigns(:personaje_sf4))
  end

  test "should show personaje_sf4" do
    get :show, :id => @personaje_sf4.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @personaje_sf4.to_param
    assert_response :success
  end

  test "should update personaje_sf4" do
    put :update, :id => @personaje_sf4.to_param, :personaje_sf4 => @personaje_sf4.attributes
    assert_redirected_to personaje_sf4_path(assigns(:personaje_sf4))
  end

  test "should destroy personaje_sf4" do
    assert_difference('PersonajeSf4.count', -1) do
      delete :destroy, :id => @personaje_sf4.to_param
    end

    assert_redirected_to personaje_sf4s_path
  end
end
