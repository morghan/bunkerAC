require 'test_helper'

class PersonajeGuiltiesControllerTest < ActionController::TestCase
  setup do
    @personaje_guilty = personaje_guilties(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:personaje_guilties)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create personaje_guilty" do
    assert_difference('PersonajeGuilty.count') do
      post :create, :personaje_guilty => @personaje_guilty.attributes
    end

    assert_redirected_to personaje_guilty_path(assigns(:personaje_guilty))
  end

  test "should show personaje_guilty" do
    get :show, :id => @personaje_guilty.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @personaje_guilty.to_param
    assert_response :success
  end

  test "should update personaje_guilty" do
    put :update, :id => @personaje_guilty.to_param, :personaje_guilty => @personaje_guilty.attributes
    assert_redirected_to personaje_guilty_path(assigns(:personaje_guilty))
  end

  test "should destroy personaje_guilty" do
    assert_difference('PersonajeGuilty.count', -1) do
      delete :destroy, :id => @personaje_guilty.to_param
    end

    assert_redirected_to personaje_guilties_path
  end
end
