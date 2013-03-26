require 'test_helper'

class GramsControllerTest < ActionController::TestCase
  setup do
    @gram = grams(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:grams)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create gram" do
    assert_difference('Gram.count') do
      post :create, gram: { description: @gram.description }
    end

    assert_redirected_to gram_path(assigns(:gram))
  end

  test "should show gram" do
    get :show, id: @gram
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @gram
    assert_response :success
  end

  test "should update gram" do
    put :update, id: @gram, gram: { description: @gram.description }
    assert_redirected_to gram_path(assigns(:gram))
  end

  test "should destroy gram" do
    assert_difference('Gram.count', -1) do
      delete :destroy, id: @gram
    end

    assert_redirected_to grams_path
  end
end
