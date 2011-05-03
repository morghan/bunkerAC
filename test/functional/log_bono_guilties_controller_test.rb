require 'test_helper'

class LogBonoGuiltiesControllerTest < ActionController::TestCase
  setup do
    @log_bono_guilty = log_bono_guilties(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:log_bono_guilties)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create log_bono_guilty" do
    assert_difference('LogBonoGuilty.count') do
      post :create, :log_bono_guilty => @log_bono_guilty.attributes
    end

    assert_redirected_to log_bono_guilty_path(assigns(:log_bono_guilty))
  end

  test "should show log_bono_guilty" do
    get :show, :id => @log_bono_guilty.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @log_bono_guilty.to_param
    assert_response :success
  end

  test "should update log_bono_guilty" do
    put :update, :id => @log_bono_guilty.to_param, :log_bono_guilty => @log_bono_guilty.attributes
    assert_redirected_to log_bono_guilty_path(assigns(:log_bono_guilty))
  end

  test "should destroy log_bono_guilty" do
    assert_difference('LogBonoGuilty.count', -1) do
      delete :destroy, :id => @log_bono_guilty.to_param
    end

    assert_redirected_to log_bono_guilties_path
  end
end
