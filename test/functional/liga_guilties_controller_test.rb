require 'test_helper'

class LigaGuiltiesControllerTest < ActionController::TestCase
  setup do
    @liga_guilty = liga_guilties(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:liga_guilties)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create liga_guilty" do
    assert_difference('LigaGuilty.count') do
      post :create, :liga_guilty => @liga_guilty.attributes
    end

    assert_redirected_to liga_guilty_path(assigns(:liga_guilty))
  end

  test "should show liga_guilty" do
    get :show, :id => @liga_guilty.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @liga_guilty.to_param
    assert_response :success
  end

  test "should update liga_guilty" do
    put :update, :id => @liga_guilty.to_param, :liga_guilty => @liga_guilty.attributes
    assert_redirected_to liga_guilty_path(assigns(:liga_guilty))
  end

  test "should destroy liga_guilty" do
    assert_difference('LigaGuilty.count', -1) do
      delete :destroy, :id => @liga_guilty.to_param
    end

    assert_redirected_to liga_guilties_path
  end
end
