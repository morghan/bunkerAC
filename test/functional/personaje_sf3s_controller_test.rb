require 'test_helper'

class PersonajeSf3sControllerTest < ActionController::TestCase
  setup do
    @personaje_sf3 = personaje_sf3s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:personaje_sf3s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create personaje_sf3" do
    assert_difference('PersonajeSf3.count') do
      post :create, :personaje_sf3 => @personaje_sf3.attributes
    end

    assert_redirected_to personaje_sf3_path(assigns(:personaje_sf3))
  end

  test "should show personaje_sf3" do
    get :show, :id => @personaje_sf3.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @personaje_sf3.to_param
    assert_response :success
  end

  test "should update personaje_sf3" do
    put :update, :id => @personaje_sf3.to_param, :personaje_sf3 => @personaje_sf3.attributes
    assert_redirected_to personaje_sf3_path(assigns(:personaje_sf3))
  end

  test "should destroy personaje_sf3" do
    assert_difference('PersonajeSf3.count', -1) do
      delete :destroy, :id => @personaje_sf3.to_param
    end

    assert_redirected_to personaje_sf3s_path
  end
end
