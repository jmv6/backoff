require 'test_helper'

class TrustsControllerTest < ActionController::TestCase
  setup do
    @trust = trusts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:trusts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create trust" do
    assert_difference('Trust.count') do
      post :create, trust: { client_id: @trust.client_id, completed: @trust.completed, information_received_from_provider: @trust.information_received_from_provider, loa_sent_to_client: @trust.loa_sent_to_client, loa_sent_to_provider: @trust.loa_sent_to_provider, loa_signed_and_received: @trust.loa_signed_and_received, notes: @trust.notes, payment_received: @trust.payment_received, provider: @trust.provider, sent_to_trustees: @trust.sent_to_trustees, signed_by_trustees: @trust.signed_by_trustees, total_value: @trust.total_value, trust_docs_sent_to_client: @trust.trust_docs_sent_to_client, trust_docs_signed_and_received: @trust.trust_docs_signed_and_received, type_of_cover: @trust.type_of_cover, user_id: @trust.user_id }
    end

    assert_redirected_to trust_path(assigns(:trust))
  end

  test "should show trust" do
    get :show, id: @trust
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @trust
    assert_response :success
  end

  test "should update trust" do
    patch :update, id: @trust, trust: { client_id: @trust.client_id, completed: @trust.completed, information_received_from_provider: @trust.information_received_from_provider, loa_sent_to_client: @trust.loa_sent_to_client, loa_sent_to_provider: @trust.loa_sent_to_provider, loa_signed_and_received: @trust.loa_signed_and_received, notes: @trust.notes, payment_received: @trust.payment_received, provider: @trust.provider, sent_to_trustees: @trust.sent_to_trustees, signed_by_trustees: @trust.signed_by_trustees, total_value: @trust.total_value, trust_docs_sent_to_client: @trust.trust_docs_sent_to_client, trust_docs_signed_and_received: @trust.trust_docs_signed_and_received, type_of_cover: @trust.type_of_cover, user_id: @trust.user_id }
    assert_redirected_to trust_path(assigns(:trust))
  end

  test "should destroy trust" do
    assert_difference('Trust.count', -1) do
      delete :destroy, id: @trust
    end

    assert_redirected_to trusts_path
  end
end
