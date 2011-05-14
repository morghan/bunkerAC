require 'test_helper'

class LogPeleaBlazBlueGeneralsControllerTest < ActionController::TestCase
  setup do
    @log_pelea_blaz_blue_general = log_pelea_blaz_blue_generals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:log_pelea_blaz_blue_generals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create log_pelea_blaz_blue_general" do
    assert_difference('LogPeleaBlazBlueGeneral.count') do
      post :create, :log_pelea_blaz_blue_general => @log_pelea_blaz_blue_general.attributes
    end

    assert_redirected_to log_pelea_blaz_blue_general_path(assigns(:log_pelea_blaz_blue_general))
  end

  test "should show log_pelea_blaz_blue_general" do
    get :show, :id => @log_pelea_blaz_blue_general.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @log_pelea_blaz_blue_general.to_param
    assert_response :success
  end

  test "should update log_pelea_blaz_blue_general" do
    put :update, :id => @log_pelea_blaz_blue_general.to_param, :log_pelea_blaz_blue_general => @log_pelea_blaz_blue_general.attributes
    assert_redirected_to log_pelea_blaz_blue_general_path(assigns(:log_pelea_blaz_blue_general))
  end

  test "should destroy log_pelea_blaz_blue_general" do
    assert_difference('LogPeleaBlazBlueGeneral.count', -1) do
      delete :destroy, :id => @log_pelea_blaz_blue_general.to_param
    end

    assert_redirected_to log_pelea_blaz_blue_generals_path
  end
end
