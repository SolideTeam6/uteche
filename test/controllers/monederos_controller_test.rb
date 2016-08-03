require 'test_helper'

class MonederosControllerTest < ActionController::TestCase
  setup do
    @monedero = monederos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:monederos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create monedero" do
    assert_difference('Monedero.count') do
      post :create, monedero: { cantidad: @monedero.cantidad, student_id: @monedero.student_id }
    end

    assert_redirected_to monedero_path(assigns(:monedero))
  end

  test "should show monedero" do
    get :show, id: @monedero
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @monedero
    assert_response :success
  end

  test "should update monedero" do
    patch :update, id: @monedero, monedero: { cantidad: @monedero.cantidad, student_id: @monedero.student_id }
    assert_redirected_to monedero_path(assigns(:monedero))
  end

  test "should destroy monedero" do
    assert_difference('Monedero.count', -1) do
      delete :destroy, id: @monedero
    end

    assert_redirected_to monederos_path
  end
end
