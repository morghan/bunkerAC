require 'test_helper'

class LogPeleaGuiltiesControllerTest < ActionController::TestCase
  setup do
    @log_pelea_guilty = log_pelea_guilties(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:log_pelea_guilties)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create log_pelea_guilty" do
    assert_difference('LogPeleaGuilty.count') do
      post :create, :log_pelea_guilty => @log_pelea_guilty.attributes
    end

    assert_redirected_to log_pelea_guilty_path(assigns(:log_pelea_guilty))
  end

  test "should show log_pelea_guilty" do
    get :show, :id => @log_pelea_guilty.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @log_pelea_guilty.to_param
    assert_response :success
  end

  test "should update log_pelea_guilty" do
    put :update, :id => @log_pelea_guilty.to_param, :log_pelea_guilty => @log_pelea_guilty.attributes
    assert_redirected_to log_pelea_guilty_path(assigns(:log_pelea_guilty))
  end

  test "should destroy log_pelea_guilty" do
    assert_difference('LogPeleaGuilty.count', -1) do
      delete :destroy, :id => @log_pelea_guilty.to_param
    end

    assert_redirected_to log_pelea_guilties_path
  end
end
