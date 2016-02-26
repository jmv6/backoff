require 'test_helper'

class PensionTransfersControllerTest < ActionController::TestCase
  setup do
    @pension_transfer = pension_transfers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pension_transfers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pension_transfer" do
    assert_difference('PensionTransfer.count') do
      post :create, pension_transfer: { client_id: @pension_transfer.client_id, completed: @pension_transfer.completed, loa_sent_to_provider: @pension_transfer.loa_sent_to_provider, loa_signed: @pension_transfer.loa_signed, user_id: @pension_transfer.user_id }
    end

    assert_redirected_to pension_transfer_path(assigns(:pension_transfer))
  end

  test "should show pension_transfer" do
    get :show, id: @pension_transfer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pension_transfer
    assert_response :success
  end

  test "should update pension_transfer" do
    patch :update, id: @pension_transfer, pension_transfer: { client_id: @pension_transfer.client_id, completed: @pension_transfer.completed, loa_sent_to_provider: @pension_transfer.loa_sent_to_provider, loa_signed: @pension_transfer.loa_signed, user_id: @pension_transfer.user_id }
    assert_redirected_to pension_transfer_path(assigns(:pension_transfer))
  end

  test "should destroy pension_transfer" do
    assert_difference('PensionTransfer.count', -1) do
      delete :destroy, id: @pension_transfer
    end

    assert_redirected_to pension_transfers_path
  end
end
