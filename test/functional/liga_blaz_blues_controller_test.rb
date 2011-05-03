require 'test_helper'

class LigaBlazBluesControllerTest < ActionController::TestCase
  setup do
    @liga_blaz_blue = liga_blaz_blues(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:liga_blaz_blues)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create liga_blaz_blue" do
    assert_difference('LigaBlazBlue.count') do
      post :create, :liga_blaz_blue => @liga_blaz_blue.attributes
    end

    assert_redirected_to liga_blaz_blue_path(assigns(:liga_blaz_blue))
  end

  test "should show liga_blaz_blue" do
    get :show, :id => @liga_blaz_blue.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @liga_blaz_blue.to_param
    assert_response :success
  end

  test "should update liga_blaz_blue" do
    put :update, :id => @liga_blaz_blue.to_param, :liga_blaz_blue => @liga_blaz_blue.attributes
    assert_redirected_to liga_blaz_blue_path(assigns(:liga_blaz_blue))
  end

  test "should destroy liga_blaz_blue" do
    assert_difference('LigaBlazBlue.count', -1) do
      delete :destroy, :id => @liga_blaz_blue.to_param
    end

    assert_redirected_to liga_blaz_blues_path
  end
end
