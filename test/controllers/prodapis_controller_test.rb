require 'test_helper'

class ProdapisControllerTest < ActionController::TestCase
  setup do
    @prodapi = prodapis(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:prodapis)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create prodapi" do
    assert_difference('Prodapi.count') do
      post :create, prodapi: { category_id: @prodapi.category_id, name: @prodapi.name, price: @prodapi.price }
    end

    assert_redirected_to prodapi_path(assigns(:prodapi))
  end

  test "should show prodapi" do
    get :show, id: @prodapi
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @prodapi
    assert_response :success
  end

  test "should update prodapi" do
    patch :update, id: @prodapi, prodapi: { category_id: @prodapi.category_id, name: @prodapi.name, price: @prodapi.price }
    assert_redirected_to prodapi_path(assigns(:prodapi))
  end

  test "should destroy prodapi" do
    assert_difference('Prodapi.count', -1) do
      delete :destroy, id: @prodapi
    end

    assert_redirected_to prodapis_path
  end
end
