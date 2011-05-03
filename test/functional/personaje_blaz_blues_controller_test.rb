require 'test_helper'

class PersonajeBlazBluesControllerTest < ActionController::TestCase
  setup do
    @personaje_blaz_blue = personaje_blaz_blues(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:personaje_blaz_blues)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create personaje_blaz_blue" do
    assert_difference('PersonajeBlazBlue.count') do
      post :create, :personaje_blaz_blue => @personaje_blaz_blue.attributes
    end

    assert_redirected_to personaje_blaz_blue_path(assigns(:personaje_blaz_blue))
  end

  test "should show personaje_blaz_blue" do
    get :show, :id => @personaje_blaz_blue.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @personaje_blaz_blue.to_param
    assert_response :success
  end

  test "should update personaje_blaz_blue" do
    put :update, :id => @personaje_blaz_blue.to_param, :personaje_blaz_blue => @personaje_blaz_blue.attributes
    assert_redirected_to personaje_blaz_blue_path(assigns(:personaje_blaz_blue))
  end

  test "should destroy personaje_blaz_blue" do
    assert_difference('PersonajeBlazBlue.count', -1) do
      delete :destroy, :id => @personaje_blaz_blue.to_param
    end

    assert_redirected_to personaje_blaz_blues_path
  end
end
