require 'test_helper'

class UsuariosControllerTest < ActionController::TestCase
  setup do
    @usuario = usuarios(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:usuarios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create usuario" do
    assert_difference('Usuarios.count') do
      post :create, usuario: { apellido1: @usuario.apellido1, apellido2: @usuario.apellido2, cliente_id: @usuario.cliente_id, email: @usuario.email, nombre1: @usuario.nombre1, nombre2: @usuario.nombre2, password: @usuario.password, rol_id: @usuario.rol_id, telefono2: @usuario.telefono2 }
    end

    assert_redirected_to usuario_path(assigns(:usuario))
  end

  test "should show usuario" do
    get :show, id: @usuario
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @usuario
    assert_response :success
  end

  test "should update usuario" do
    patch :update, id: @usuario, usuario: { apellido1: @usuario.apellido1, apellido2: @usuario.apellido2, cliente_id: @usuario.cliente_id, email: @usuario.email, nombre1: @usuario.nombre1, nombre2: @usuario.nombre2, password: @usuario.password, rol_id: @usuario.rol_id, telefono2: @usuario.telefono2 }
    assert_redirected_to usuario_path(assigns(:usuario))
  end

  test "should destroy usuario" do
    assert_difference('Usuarios.count', -1) do
      delete :destroy, id: @usuario
    end

    assert_redirected_to usuarios_index_path
  end
end
