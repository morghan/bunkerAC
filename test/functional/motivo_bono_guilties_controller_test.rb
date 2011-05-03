require 'test_helper'

class MotivoBonoGuiltiesControllerTest < ActionController::TestCase
  setup do
    @motivo_bono_guilty = motivo_bono_guilties(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:motivo_bono_guilties)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create motivo_bono_guilty" do
    assert_difference('MotivoBonoGuilty.count') do
      post :create, :motivo_bono_guilty => @motivo_bono_guilty.attributes
    end

    assert_redirected_to motivo_bono_guilty_path(assigns(:motivo_bono_guilty))
  end

  test "should show motivo_bono_guilty" do
    get :show, :id => @motivo_bono_guilty.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @motivo_bono_guilty.to_param
    assert_response :success
  end

  test "should update motivo_bono_guilty" do
    put :update, :id => @motivo_bono_guilty.to_param, :motivo_bono_guilty => @motivo_bono_guilty.attributes
    assert_redirected_to motivo_bono_guilty_path(assigns(:motivo_bono_guilty))
  end

  test "should destroy motivo_bono_guilty" do
    assert_difference('MotivoBonoGuilty.count', -1) do
      delete :destroy, :id => @motivo_bono_guilty.to_param
    end

    assert_redirected_to motivo_bono_guilties_path
  end
end
