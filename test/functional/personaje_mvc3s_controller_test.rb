require 'test_helper'

class PersonajeMvc3sControllerTest < ActionController::TestCase
  setup do
    @personaje_mvc3 = personaje_mvc3s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:personaje_mvc3s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create personaje_mvc3" do
    assert_difference('PersonajeMvc3.count') do
      post :create, :personaje_mvc3 => @personaje_mvc3.attributes
    end

    assert_redirected_to personaje_mvc3_path(assigns(:personaje_mvc3))
  end

  test "should show personaje_mvc3" do
    get :show, :id => @personaje_mvc3.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @personaje_mvc3.to_param
    assert_response :success
  end

  test "should update personaje_mvc3" do
    put :update, :id => @personaje_mvc3.to_param, :personaje_mvc3 => @personaje_mvc3.attributes
    assert_redirected_to personaje_mvc3_path(assigns(:personaje_mvc3))
  end

  test "should destroy personaje_mvc3" do
    assert_difference('PersonajeMvc3.count', -1) do
      delete :destroy, :id => @personaje_mvc3.to_param
    end

    assert_redirected_to personaje_mvc3s_path
  end
end
