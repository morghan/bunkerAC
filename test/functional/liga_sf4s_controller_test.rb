require 'test_helper'

class LigaSf4sControllerTest < ActionController::TestCase
  setup do
    @liga_sf4 = liga_sf4s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:liga_sf4s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create liga_sf4" do
    assert_difference('LigaSf4.count') do
      post :create, :liga_sf4 => @liga_sf4.attributes
    end

    assert_redirected_to liga_sf4_path(assigns(:liga_sf4))
  end

  test "should show liga_sf4" do
    get :show, :id => @liga_sf4.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @liga_sf4.to_param
    assert_response :success
  end

  test "should update liga_sf4" do
    put :update, :id => @liga_sf4.to_param, :liga_sf4 => @liga_sf4.attributes
    assert_redirected_to liga_sf4_path(assigns(:liga_sf4))
  end

  test "should destroy liga_sf4" do
    assert_difference('LigaSf4.count', -1) do
      delete :destroy, :id => @liga_sf4.to_param
    end

    assert_redirected_to liga_sf4s_path
  end
end
