require 'test_helper'

class MotivoBonoBlazBluesControllerTest < ActionController::TestCase
  setup do
    @motivo_bono_blaz_blue = motivo_bono_blaz_blues(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:motivo_bono_blaz_blues)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create motivo_bono_blaz_blue" do
    assert_difference('MotivoBonoBlazBlue.count') do
      post :create, :motivo_bono_blaz_blue => @motivo_bono_blaz_blue.attributes
    end

    assert_redirected_to motivo_bono_blaz_blue_path(assigns(:motivo_bono_blaz_blue))
  end

  test "should show motivo_bono_blaz_blue" do
    get :show, :id => @motivo_bono_blaz_blue.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @motivo_bono_blaz_blue.to_param
    assert_response :success
  end

  test "should update motivo_bono_blaz_blue" do
    put :update, :id => @motivo_bono_blaz_blue.to_param, :motivo_bono_blaz_blue => @motivo_bono_blaz_blue.attributes
    assert_redirected_to motivo_bono_blaz_blue_path(assigns(:motivo_bono_blaz_blue))
  end

  test "should destroy motivo_bono_blaz_blue" do
    assert_difference('MotivoBonoBlazBlue.count', -1) do
      delete :destroy, :id => @motivo_bono_blaz_blue.to_param
    end

    assert_redirected_to motivo_bono_blaz_blues_path
  end
end
