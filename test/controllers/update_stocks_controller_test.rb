require 'test_helper'

class UpdateStocksControllerTest < ActionController::TestCase
  setup do
    @update_stock = update_stocks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:update_stocks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create update_stock" do
    assert_difference('UpdateStock.count') do
      post :create, update_stock: { cantidad: @update_stock.cantidad, product_id: @update_stock.product_id }
    end

    assert_redirected_to update_stock_path(assigns(:update_stock))
  end

  test "should show update_stock" do
    get :show, id: @update_stock
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @update_stock
    assert_response :success
  end

  test "should update update_stock" do
    patch :update, id: @update_stock, update_stock: { cantidad: @update_stock.cantidad, product_id: @update_stock.product_id }
    assert_redirected_to update_stock_path(assigns(:update_stock))
  end

  test "should destroy update_stock" do
    assert_difference('UpdateStock.count', -1) do
      delete :destroy, id: @update_stock
    end

    assert_redirected_to update_stocks_path
  end
end
