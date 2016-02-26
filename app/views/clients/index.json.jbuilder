json.array!(@clients) do |client|
  json.extract! client, :id, :first_name, :surname, :title, :date_of_birth, :employment_status, :marital_status, :maiden_name, :number_of_dependents, :dependents_names_ages, :nationality, :planned_retirement_age, :smoker, :address_1, :address_2, :town, :post_code, :country, :preferred_tel, :home_telephone, :mobile_telephone, :best_time, :email, :children_under_age, :employment_permanent, :occupation, :sick_pay_benefit, :user_id, :controlling_director, :shareholding, :year1_profit, :year2_profit, :year3_profit, :accountant_details, :annual_income, :annual_expenses
  json.url client_url(client, format: :json)
end
