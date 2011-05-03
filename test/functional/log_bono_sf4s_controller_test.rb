require 'test_helper'

class LogBonoSf4sControllerTest < ActionController::TestCase
  setup do
    @log_bono_sf4 = log_bono_sf4s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:log_bono_sf4s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create log_bono_sf4" do
    assert_difference('LogBonoSf4.count') do
      post :create, :log_bono_sf4 => @log_bono_sf4.attributes
    end

    assert_redirected_to log_bono_sf4_path(assigns(:log_bono_sf4))
  end

  test "should show log_bono_sf4" do
    get :show, :id => @log_bono_sf4.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @log_bono_sf4.to_param
    assert_response :success
  end

  test "should update log_bono_sf4" do
    put :update, :id => @log_bono_sf4.to_param, :log_bono_sf4 => @log_bono_sf4.attributes
    assert_redirected_to log_bono_sf4_path(assigns(:log_bono_sf4))
  end

  test "should destroy log_bono_sf4" do
    assert_difference('LogBonoSf4.count', -1) do
      delete :destroy, :id => @log_bono_sf4.to_param
    end

    assert_redirected_to log_bono_sf4s_path
  end
end
