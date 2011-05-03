require 'test_helper'

class LogPeleaBlazBluesControllerTest < ActionController::TestCase
  setup do
    @log_pelea_blaz_blue = log_pelea_blaz_blues(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:log_pelea_blaz_blues)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create log_pelea_blaz_blue" do
    assert_difference('LogPeleaBlazBlue.count') do
      post :create, :log_pelea_blaz_blue => @log_pelea_blaz_blue.attributes
    end

    assert_redirected_to log_pelea_blaz_blue_path(assigns(:log_pelea_blaz_blue))
  end

  test "should show log_pelea_blaz_blue" do
    get :show, :id => @log_pelea_blaz_blue.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @log_pelea_blaz_blue.to_param
    assert_response :success
  end

  test "should update log_pelea_blaz_blue" do
    put :update, :id => @log_pelea_blaz_blue.to_param, :log_pelea_blaz_blue => @log_pelea_blaz_blue.attributes
    assert_redirected_to log_pelea_blaz_blue_path(assigns(:log_pelea_blaz_blue))
  end

  test "should destroy log_pelea_blaz_blue" do
    assert_difference('LogPeleaBlazBlue.count', -1) do
      delete :destroy, :id => @log_pelea_blaz_blue.to_param
    end

    assert_redirected_to log_pelea_blaz_blues_path
  end
end
