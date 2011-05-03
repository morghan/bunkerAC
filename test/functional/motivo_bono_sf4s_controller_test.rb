require 'test_helper'

class MotivoBonoSf4sControllerTest < ActionController::TestCase
  setup do
    @motivo_bono_sf4 = motivo_bono_sf4s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:motivo_bono_sf4s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create motivo_bono_sf4" do
    assert_difference('MotivoBonoSf4.count') do
      post :create, :motivo_bono_sf4 => @motivo_bono_sf4.attributes
    end

    assert_redirected_to motivo_bono_sf4_path(assigns(:motivo_bono_sf4))
  end

  test "should show motivo_bono_sf4" do
    get :show, :id => @motivo_bono_sf4.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @motivo_bono_sf4.to_param
    assert_response :success
  end

  test "should update motivo_bono_sf4" do
    put :update, :id => @motivo_bono_sf4.to_param, :motivo_bono_sf4 => @motivo_bono_sf4.attributes
    assert_redirected_to motivo_bono_sf4_path(assigns(:motivo_bono_sf4))
  end

  test "should destroy motivo_bono_sf4" do
    assert_difference('MotivoBonoSf4.count', -1) do
      delete :destroy, :id => @motivo_bono_sf4.to_param
    end

    assert_redirected_to motivo_bono_sf4s_path
  end
end
