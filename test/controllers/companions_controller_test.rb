require 'test_helper'

class CompanionsControllerTest < ActionController::TestCase
  setup do
    @companion = companions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:companions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create companion" do
    assert_difference('Companion.count') do
      post :create, companion: { name: @companion.name, skills: @companion.skills }
    end

    assert_redirected_to companion_path(assigns(:companion))
  end

  test "should show companion" do
    get :show, id: @companion
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @companion
    assert_response :success
  end

  test "should update companion" do
    patch :update, id: @companion, companion: { name: @companion.name, skills: @companion.skills }
    assert_redirected_to companion_path(assigns(:companion))
  end

  test "should destroy companion" do
    assert_difference('Companion.count', -1) do
      delete :destroy, id: @companion
    end

    assert_redirected_to companions_path
  end
end
