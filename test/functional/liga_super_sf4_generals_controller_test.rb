require 'test_helper'

class LigaSuperSf4GeneralsControllerTest < ActionController::TestCase
  setup do
    @liga_super_sf4_general = liga_super_sf4_generals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:liga_super_sf4_generals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create liga_super_sf4_general" do
    assert_difference('LigaSuperSf4General.count') do
      post :create, :liga_super_sf4_general => @liga_super_sf4_general.attributes
    end

    assert_redirected_to liga_super_sf4_general_path(assigns(:liga_super_sf4_general))
  end

  test "should show liga_super_sf4_general" do
    get :show, :id => @liga_super_sf4_general.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @liga_super_sf4_general.to_param
    assert_response :success
  end

  test "should update liga_super_sf4_general" do
    put :update, :id => @liga_super_sf4_general.to_param, :liga_super_sf4_general => @liga_super_sf4_general.attributes
    assert_redirected_to liga_super_sf4_general_path(assigns(:liga_super_sf4_general))
  end

  test "should destroy liga_super_sf4_general" do
    assert_difference('LigaSuperSf4General.count', -1) do
      delete :destroy, :id => @liga_super_sf4_general.to_param
    end

    assert_redirected_to liga_super_sf4_generals_path
  end
end
