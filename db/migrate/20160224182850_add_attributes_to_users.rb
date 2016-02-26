class AddAttributesToUsers < ActiveRecord::Migration
  def change
    add_column :users, :admin, :boolean
    add_column :users, :first_name, :string
    add_column :users, :surname, :string
    add_column :users, :agent_number, :integer
  end
end
