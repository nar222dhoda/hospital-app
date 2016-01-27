require 'test_helper'

class TypeofpetsControllerTest < ActionController::TestCase
  setup do
    @typeofpet = typeofpets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:typeofpets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create typeofpet" do
    assert_difference('Typeofpet.count') do
      post :create, typeofpet: { name: @typeofpet.name, pet_id: @typeofpet.pet_id }
    end

    assert_redirected_to typeofpet_path(assigns(:typeofpet))
  end

  test "should show typeofpet" do
    get :show, id: @typeofpet
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @typeofpet
    assert_response :success
  end

  test "should update typeofpet" do
    patch :update, id: @typeofpet, typeofpet: { name: @typeofpet.name, pet_id: @typeofpet.pet_id }
    assert_redirected_to typeofpet_path(assigns(:typeofpet))
  end

  test "should destroy typeofpet" do
    assert_difference('Typeofpet.count', -1) do
      delete :destroy, id: @typeofpet
    end

    assert_redirected_to typeofpets_path
  end
end
