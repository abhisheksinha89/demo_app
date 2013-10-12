require 'test_helper'

class HubabasControllerTest < ActionController::TestCase
  setup do
    @hubaba = hubabas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hubabas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hubaba" do
    assert_difference('Hubaba.count') do
      post :create, hubaba: { man: @hubaba.man, name: @hubaba.name }
    end

    assert_redirected_to hubaba_path(assigns(:hubaba))
  end

  test "should show hubaba" do
    get :show, id: @hubaba
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hubaba
    assert_response :success
  end

  test "should update hubaba" do
    patch :update, id: @hubaba, hubaba: { man: @hubaba.man, name: @hubaba.name }
    assert_redirected_to hubaba_path(assigns(:hubaba))
  end

  test "should destroy hubaba" do
    assert_difference('Hubaba.count', -1) do
      delete :destroy, id: @hubaba
    end

    assert_redirected_to hubabas_path
  end
end
