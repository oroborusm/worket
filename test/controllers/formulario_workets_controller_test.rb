require 'test_helper'

class FormularioWorketsControllerTest < ActionController::TestCase
  setup do
    @formulario_worket = formulario_workets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:formulario_workets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create formulario_worket" do
    assert_difference('FormularioWorket.count') do
      post :create, formulario_worket: { actividad: @formulario_worket.actividad, adjunto: @formulario_worket.adjunto, apellido1: @formulario_worket.apellido1, apellido2: @formulario_worket.apellido2, email: @formulario_worket.email, nombre1: @formulario_worket.nombre1, nombre2: @formulario_worket.nombre2, rut: @formulario_worket.rut, telefono: @formulario_worket.telefono }
    end

    assert_redirected_to formulario_worket_path(assigns(:formulario_worket))
  end

  test "should show formulario_worket" do
    get :show, id: @formulario_worket
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @formulario_worket
    assert_response :success
  end

  test "should update formulario_worket" do
    patch :update, id: @formulario_worket, formulario_worket: { actividad: @formulario_worket.actividad, adjunto: @formulario_worket.adjunto, apellido1: @formulario_worket.apellido1, apellido2: @formulario_worket.apellido2, email: @formulario_worket.email, nombre1: @formulario_worket.nombre1, nombre2: @formulario_worket.nombre2, rut: @formulario_worket.rut, telefono: @formulario_worket.telefono }
    assert_redirected_to formulario_worket_path(assigns(:formulario_worket))
  end

  test "should destroy formulario_worket" do
    assert_difference('FormularioWorket.count', -1) do
      delete :destroy, id: @formulario_worket
    end

    assert_redirected_to formulario_workets_path
  end
end
