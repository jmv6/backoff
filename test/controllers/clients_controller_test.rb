require 'test_helper'

class ClientsControllerTest < ActionController::TestCase
  setup do
    @client = clients(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:clients)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create client" do
    assert_difference('Client.count') do
      post :create, client: { accountant_details: @client.accountant_details, address_1: @client.address_1, address_2: @client.address_2, annual_expenses: @client.annual_expenses, annual_income: @client.annual_income, best_time: @client.best_time, children_under_age: @client.children_under_age, controlling_director: @client.controlling_director, country: @client.country, date_of_birth: @client.date_of_birth, dependents_names_ages: @client.dependents_names_ages, email: @client.email, employment_permanent: @client.employment_permanent, employment_status: @client.employment_status, first_name: @client.first_name, home_telephone: @client.home_telephone, maiden_name: @client.maiden_name, marital_status: @client.marital_status, mobile_telephone: @client.mobile_telephone, nationality: @client.nationality, number_of_dependents: @client.number_of_dependents, occupation: @client.occupation, planned_retirement_age: @client.planned_retirement_age, post_code: @client.post_code, preferred_tel: @client.preferred_tel, shareholding: @client.shareholding, sick_pay_benefit: @client.sick_pay_benefit, smoker: @client.smoker, surname: @client.surname, title: @client.title, town: @client.town, user_id: @client.user_id, year1_profit: @client.year1_profit, year2_profit: @client.year2_profit, year3_profit: @client.year3_profit }
    end

    assert_redirected_to client_path(assigns(:client))
  end

  test "should show client" do
    get :show, id: @client
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @client
    assert_response :success
  end

  test "should update client" do
    patch :update, id: @client, client: { accountant_details: @client.accountant_details, address_1: @client.address_1, address_2: @client.address_2, annual_expenses: @client.annual_expenses, annual_income: @client.annual_income, best_time: @client.best_time, children_under_age: @client.children_under_age, controlling_director: @client.controlling_director, country: @client.country, date_of_birth: @client.date_of_birth, dependents_names_ages: @client.dependents_names_ages, email: @client.email, employment_permanent: @client.employment_permanent, employment_status: @client.employment_status, first_name: @client.first_name, home_telephone: @client.home_telephone, maiden_name: @client.maiden_name, marital_status: @client.marital_status, mobile_telephone: @client.mobile_telephone, nationality: @client.nationality, number_of_dependents: @client.number_of_dependents, occupation: @client.occupation, planned_retirement_age: @client.planned_retirement_age, post_code: @client.post_code, preferred_tel: @client.preferred_tel, shareholding: @client.shareholding, sick_pay_benefit: @client.sick_pay_benefit, smoker: @client.smoker, surname: @client.surname, title: @client.title, town: @client.town, user_id: @client.user_id, year1_profit: @client.year1_profit, year2_profit: @client.year2_profit, year3_profit: @client.year3_profit }
    assert_redirected_to client_path(assigns(:client))
  end

  test "should destroy client" do
    assert_difference('Client.count', -1) do
      delete :destroy, id: @client
    end

    assert_redirected_to clients_path
  end
end
