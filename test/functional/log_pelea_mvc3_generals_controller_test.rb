require 'test_helper'

class LogPeleaMvc3GeneralsControllerTest < ActionController::TestCase
  setup do
    @log_pelea_mvc3_general = log_pelea_mvc3_generals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:log_pelea_mvc3_generals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create log_pelea_mvc3_general" do
    assert_difference('LogPeleaMvc3General.count') do
      post :create, :log_pelea_mvc3_general => @log_pelea_mvc3_general.attributes
    end

    assert_redirected_to log_pelea_mvc3_general_path(assigns(:log_pelea_mvc3_general))
  end

  test "should show log_pelea_mvc3_general" do
    get :show, :id => @log_pelea_mvc3_general.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @log_pelea_mvc3_general.to_param
    assert_response :success
  end

  test "should update log_pelea_mvc3_general" do
    put :update, :id => @log_pelea_mvc3_general.to_param, :log_pelea_mvc3_general => @log_pelea_mvc3_general.attributes
    assert_redirected_to log_pelea_mvc3_general_path(assigns(:log_pelea_mvc3_general))
  end

  test "should destroy log_pelea_mvc3_general" do
    assert_difference('LogPeleaMvc3General.count', -1) do
      delete :destroy, :id => @log_pelea_mvc3_general.to_param
    end

    assert_redirected_to log_pelea_mvc3_generals_path
  end
end
