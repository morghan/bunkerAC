require 'test_helper'

class LogPeleaSf4sControllerTest < ActionController::TestCase
  setup do
    @log_pelea_sf4 = log_pelea_sf4s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:log_pelea_sf4s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create log_pelea_sf4" do
    assert_difference('LogPeleaSf4.count') do
      post :create, :log_pelea_sf4 => @log_pelea_sf4.attributes
    end

    assert_redirected_to log_pelea_sf4_path(assigns(:log_pelea_sf4))
  end

  test "should show log_pelea_sf4" do
    get :show, :id => @log_pelea_sf4.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @log_pelea_sf4.to_param
    assert_response :success
  end

  test "should update log_pelea_sf4" do
    put :update, :id => @log_pelea_sf4.to_param, :log_pelea_sf4 => @log_pelea_sf4.attributes
    assert_redirected_to log_pelea_sf4_path(assigns(:log_pelea_sf4))
  end

  test "should destroy log_pelea_sf4" do
    assert_difference('LogPeleaSf4.count', -1) do
      delete :destroy, :id => @log_pelea_sf4.to_param
    end

    assert_redirected_to log_pelea_sf4s_path
  end
end
