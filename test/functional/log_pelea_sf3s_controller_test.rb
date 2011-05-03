require 'test_helper'

class LogPeleaSf3sControllerTest < ActionController::TestCase
  setup do
    @log_pelea_sf3 = log_pelea_sf3s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:log_pelea_sf3s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create log_pelea_sf3" do
    assert_difference('LogPeleaSf3.count') do
      post :create, :log_pelea_sf3 => @log_pelea_sf3.attributes
    end

    assert_redirected_to log_pelea_sf3_path(assigns(:log_pelea_sf3))
  end

  test "should show log_pelea_sf3" do
    get :show, :id => @log_pelea_sf3.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @log_pelea_sf3.to_param
    assert_response :success
  end

  test "should update log_pelea_sf3" do
    put :update, :id => @log_pelea_sf3.to_param, :log_pelea_sf3 => @log_pelea_sf3.attributes
    assert_redirected_to log_pelea_sf3_path(assigns(:log_pelea_sf3))
  end

  test "should destroy log_pelea_sf3" do
    assert_difference('LogPeleaSf3.count', -1) do
      delete :destroy, :id => @log_pelea_sf3.to_param
    end

    assert_redirected_to log_pelea_sf3s_path
  end
end
