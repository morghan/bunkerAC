require 'test_helper'

class LigaSf3sControllerTest < ActionController::TestCase
  setup do
    @liga_sf3 = liga_sf3s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:liga_sf3s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create liga_sf3" do
    assert_difference('LigaSf3.count') do
      post :create, :liga_sf3 => @liga_sf3.attributes
    end

    assert_redirected_to liga_sf3_path(assigns(:liga_sf3))
  end

  test "should show liga_sf3" do
    get :show, :id => @liga_sf3.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @liga_sf3.to_param
    assert_response :success
  end

  test "should update liga_sf3" do
    put :update, :id => @liga_sf3.to_param, :liga_sf3 => @liga_sf3.attributes
    assert_redirected_to liga_sf3_path(assigns(:liga_sf3))
  end

  test "should destroy liga_sf3" do
    assert_difference('LigaSf3.count', -1) do
      delete :destroy, :id => @liga_sf3.to_param
    end

    assert_redirected_to liga_sf3s_path
  end
end
