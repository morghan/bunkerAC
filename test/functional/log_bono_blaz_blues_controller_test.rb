require 'test_helper'

class LogBonoBlazBluesControllerTest < ActionController::TestCase
  setup do
    @log_bono_blaz_blue = log_bono_blaz_blues(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:log_bono_blaz_blues)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create log_bono_blaz_blue" do
    assert_difference('LogBonoBlazBlue.count') do
      post :create, :log_bono_blaz_blue => @log_bono_blaz_blue.attributes
    end

    assert_redirected_to log_bono_blaz_blue_path(assigns(:log_bono_blaz_blue))
  end

  test "should show log_bono_blaz_blue" do
    get :show, :id => @log_bono_blaz_blue.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @log_bono_blaz_blue.to_param
    assert_response :success
  end

  test "should update log_bono_blaz_blue" do
    put :update, :id => @log_bono_blaz_blue.to_param, :log_bono_blaz_blue => @log_bono_blaz_blue.attributes
    assert_redirected_to log_bono_blaz_blue_path(assigns(:log_bono_blaz_blue))
  end

  test "should destroy log_bono_blaz_blue" do
    assert_difference('LogBonoBlazBlue.count', -1) do
      delete :destroy, :id => @log_bono_blaz_blue.to_param
    end

    assert_redirected_to log_bono_blaz_blues_path
  end
end
