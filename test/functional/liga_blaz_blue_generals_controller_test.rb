require 'test_helper'

class LigaBlazBlueGeneralsControllerTest < ActionController::TestCase
  setup do
    @liga_blaz_blue_general = liga_blaz_blue_generals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:liga_blaz_blue_generals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create liga_blaz_blue_general" do
    assert_difference('LigaBlazBlueGeneral.count') do
      post :create, :liga_blaz_blue_general => @liga_blaz_blue_general.attributes
    end

    assert_redirected_to liga_blaz_blue_general_path(assigns(:liga_blaz_blue_general))
  end

  test "should show liga_blaz_blue_general" do
    get :show, :id => @liga_blaz_blue_general.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @liga_blaz_blue_general.to_param
    assert_response :success
  end

  test "should update liga_blaz_blue_general" do
    put :update, :id => @liga_blaz_blue_general.to_param, :liga_blaz_blue_general => @liga_blaz_blue_general.attributes
    assert_redirected_to liga_blaz_blue_general_path(assigns(:liga_blaz_blue_general))
  end

  test "should destroy liga_blaz_blue_general" do
    assert_difference('LigaBlazBlueGeneral.count', -1) do
      delete :destroy, :id => @liga_blaz_blue_general.to_param
    end

    assert_redirected_to liga_blaz_blue_generals_path
  end
end
