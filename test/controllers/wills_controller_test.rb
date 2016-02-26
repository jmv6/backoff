require 'test_helper'

class WillsControllerTest < ActionController::TestCase
  setup do
    @will = wills(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:wills)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create will" do
    assert_difference('Will.count') do
      post :create, will: { additional_clauses: @will.additional_clauses, alternate_executor: @will.alternate_executor, alternate_executor_city: @will.alternate_executor_city, alternate_executor_country: @will.alternate_executor_country, alternate_executor_name: @will.alternate_executor_name, alternate_guardian: @will.alternate_guardian, alternate_guardian_address: @will.alternate_guardian_address, children: @will.children, client_approval: @will.client_approval, client_id: @will.client_id, completed: @will.completed, draft_created: @will.draft_created, draft_sent_to_client: @will.draft_sent_to_client, estate_residue: @will.estate_residue, final_version_sent_to_client: @will.final_version_sent_to_client, gift_conditions: @will.gift_conditions, gift_conditions_age: @will.gift_conditions_age, notes: @will.notes, payment_received: @will.payment_received, pet_details_carers: @will.pet_details_carers, pets: @will.pets, relationship: @will.relationship, second_executor: @will.second_executor, second_executor_city: @will.second_executor_city, second_executor_name: @will.second_executor_name, specific_gifts: @will.specific_gifts, spouse: @will.spouse, spouse_executor: @will.spouse_executor, spouse_guardian: @will.spouse_guardian, spouse_name: @will.spouse_name, user_id: @will.user_id, wipeout_clause: @will.wipeout_clause, wipeout_distribution: @will.wipeout_distribution }
    end

    assert_redirected_to will_path(assigns(:will))
  end

  test "should show will" do
    get :show, id: @will
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @will
    assert_response :success
  end

  test "should update will" do
    patch :update, id: @will, will: { additional_clauses: @will.additional_clauses, alternate_executor: @will.alternate_executor, alternate_executor_city: @will.alternate_executor_city, alternate_executor_country: @will.alternate_executor_country, alternate_executor_name: @will.alternate_executor_name, alternate_guardian: @will.alternate_guardian, alternate_guardian_address: @will.alternate_guardian_address, children: @will.children, client_approval: @will.client_approval, client_id: @will.client_id, completed: @will.completed, draft_created: @will.draft_created, draft_sent_to_client: @will.draft_sent_to_client, estate_residue: @will.estate_residue, final_version_sent_to_client: @will.final_version_sent_to_client, gift_conditions: @will.gift_conditions, gift_conditions_age: @will.gift_conditions_age, notes: @will.notes, payment_received: @will.payment_received, pet_details_carers: @will.pet_details_carers, pets: @will.pets, relationship: @will.relationship, second_executor: @will.second_executor, second_executor_city: @will.second_executor_city, second_executor_name: @will.second_executor_name, specific_gifts: @will.specific_gifts, spouse: @will.spouse, spouse_executor: @will.spouse_executor, spouse_guardian: @will.spouse_guardian, spouse_name: @will.spouse_name, user_id: @will.user_id, wipeout_clause: @will.wipeout_clause, wipeout_distribution: @will.wipeout_distribution }
    assert_redirected_to will_path(assigns(:will))
  end

  test "should destroy will" do
    assert_difference('Will.count', -1) do
      delete :destroy, id: @will
    end

    assert_redirected_to wills_path
  end
end
