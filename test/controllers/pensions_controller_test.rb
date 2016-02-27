require 'test_helper'

class PensionsControllerTest < ActionController::TestCase
  setup do
    @pension = pensions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pensions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pension" do
    assert_difference('Pension.count') do
      post :create, pension: { client_id: @pension.client_id, completed: @pension.completed, loa_sent_to_provider: @pension.loa_sent_to_provider, loa_signed: @pension.loa_signed, user_id: @pension.user_id }
    end

    assert_redirected_to pension_path(assigns(:pension))
  end

  test "should show pension" do
    get :show, id: @pension
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pension
    assert_response :success
  end

  test "should update pension" do
    patch :update, id: @pension, pension: { client_id: @pension.client_id, completed: @pension.completed, loa_sent_to_provider: @pension.loa_sent_to_provider, loa_signed: @pension.loa_signed, user_id: @pension.user_id }
    assert_redirected_to pension_path(assigns(:pension))
  end

  test "should destroy pension" do
    assert_difference('Pension.count', -1) do
      delete :destroy, id: @pension
    end

    assert_redirected_to pensions_path
  end
end
