require 'test_helper'

class CustmsControllerTest < ActionController::TestCase
  setup do
    @custm = custms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:custms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create custm" do
    assert_difference('Custm.count') do
      post :create, custm: { name: @custm.name, next_appointment: @custm.next_appointment, pets_name: @custm.pets_name, reason: @custm.reason }
    end

    assert_redirected_to custm_path(assigns(:custm))
  end

  test "should show custm" do
    get :show, id: @custm
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @custm
    assert_response :success
  end

  test "should update custm" do
    patch :update, id: @custm, custm: { name: @custm.name, next_appointment: @custm.next_appointment, pets_name: @custm.pets_name, reason: @custm.reason }
    assert_redirected_to custm_path(assigns(:custm))
  end

  test "should destroy custm" do
    assert_difference('Custm.count', -1) do
      delete :destroy, id: @custm
    end

    assert_redirected_to custms_path
  end
end
