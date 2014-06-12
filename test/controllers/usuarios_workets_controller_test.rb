require 'test_helper'

class UsuariosWorketsControllerTest < ActionController::TestCase
  setup do
    @usuario_worket = usuarios_workets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:usuarios_workets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create usuario_worket" do
    assert_difference('UsuarioWorket.count') do
      post :create, usuario_worket: { usuario_id: @usuario_worket.usuario_id }
    end

    assert_redirected_to usuario_worket_path(assigns(:usuario_worket))
  end

  test "should show usuario_worket" do
    get :show, id: @usuario_worket
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @usuario_worket
    assert_response :success
  end

  test "should update usuario_worket" do
    patch :update, id: @usuario_worket, usuario_worket: { usuario_id: @usuario_worket.usuario_id }
    assert_redirected_to usuario_worket_path(assigns(:usuario_worket))
  end

  test "should destroy usuario_worket" do
    assert_difference('UsuarioWorket.count', -1) do
      delete :destroy, id: @usuario_worket
    end

    assert_redirected_to usuarios_workets_path
  end
end
