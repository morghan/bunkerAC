require 'test_helper'

class LigaMvc3GeneralsControllerTest < ActionController::TestCase
  setup do
    @liga_mvc3_general = liga_mvc3_generals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:liga_mvc3_generals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create liga_mvc3_general" do
    assert_difference('LigaMvc3General.count') do
      post :create, :liga_mvc3_general => @liga_mvc3_general.attributes
    end

    assert_redirected_to liga_mvc3_general_path(assigns(:liga_mvc3_general))
  end

  test "should show liga_mvc3_general" do
    get :show, :id => @liga_mvc3_general.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @liga_mvc3_general.to_param
    assert_response :success
  end

  test "should update liga_mvc3_general" do
    put :update, :id => @liga_mvc3_general.to_param, :liga_mvc3_general => @liga_mvc3_general.attributes
    assert_redirected_to liga_mvc3_general_path(assigns(:liga_mvc3_general))
  end

  test "should destroy liga_mvc3_general" do
    assert_difference('LigaMvc3General.count', -1) do
      delete :destroy, :id => @liga_mvc3_general.to_param
    end

    assert_redirected_to liga_mvc3_generals_path
  end
end
