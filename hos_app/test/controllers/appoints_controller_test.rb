require 'test_helper'

class AppointsControllerTest < ActionController::TestCase
  setup do
    @appoint = appoints(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:appoints)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create appoint" do
    assert_difference('Appoint.count') do
      post :create, appoint: { custm_id: @appoint.custm_id, doctor_id: @appoint.doctor_id, past_visit: @appoint.past_visit, pet_id: @appoint.pet_id, reason: @appoint.reason, reminder: @appoint.reminder }
    end

    assert_redirected_to appoint_path(assigns(:appoint))
  end

  test "should show appoint" do
    get :show, id: @appoint
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @appoint
    assert_response :success
  end

  test "should update appoint" do
    patch :update, id: @appoint, appoint: { custm_id: @appoint.custm_id, doctor_id: @appoint.doctor_id, past_visit: @appoint.past_visit, pet_id: @appoint.pet_id, reason: @appoint.reason, reminder: @appoint.reminder }
    assert_redirected_to appoint_path(assigns(:appoint))
  end

  test "should destroy appoint" do
    assert_difference('Appoint.count', -1) do
      delete :destroy, id: @appoint
    end

    assert_redirected_to appoints_path
  end
end
