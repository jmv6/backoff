class CreateClients < ActiveRecord::Migration
  def change
    drop_table :clients  
    create_table :clients do |t|
      t.string :first_name
      t.string :surname
      t.string :title
      t.string :date_of_birth
      t.string :employment_status
      t.string :marital_status
      t.string :maiden_name
      t.integer :number_of_dependents
      t.text :dependents_names_ages
      t.string :nationality
      t.integer :planned_retirement_age
      t.boolean :smoker
      t.string :address_1
      t.string :address_2
      t.string :town
      t.string :post_code
      t.string :country
      t.string :preferred_tel
      t.string :home_telephone
      t.string :mobile_telephone
      t.text :best_time
      t.string :email
      t.boolean :children_under_age
      t.boolean :employment_permanent
      t.string :occupation
      t.boolean :sick_pay_benefit
      t.references :user, index: true, foreign_key: true
      t.string :controlling_director
      t.integer :shareholding
      t.integer :year1_profit
      t.integer :year2_profit
      t.integer :year3_profit
      t.text :accountant_details
      t.integer :annual_income
      t.integer :annual_expenses

      t.timestamps null: false
    end
  end
end
