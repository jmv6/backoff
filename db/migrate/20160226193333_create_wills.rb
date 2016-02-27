class CreateWills < ActiveRecord::Migration
  def change
    create_table :wills do |t|
      t.references :user, index: true, foreign_key: true
      t.references :client, index: true, foreign_key: true
      t.boolean :spouse
      t.string :spouse_name
      t.string :relationship
      t.boolean :spouse_executor
      t.boolean :second_executor
      t.string :second_executor_name
      t.string :second_executor_city
      t.boolean :alternate_executor
      t.string :alternate_executor_name
      t.string :alternate_executor_city
      t.string :alternate_executor_country
      t.text :children
      t.boolean :spouse_guardian
      t.string :alternate_guardian
      t.text :alternate_guardian_address
      t.boolean :gift_conditions
      t.integer :gift_conditions_age
      t.text :specific_gifts
      t.text :estate_residue
      t.boolean :wipeout_clause
      t.text :wipeout_distribution
      t.boolean :pets
      t.text :pet_details_carers
      t.text :additional_clauses
      t.text :notes
      t.boolean :draft_created
      t.boolean :draft_sent_to_client
      t.boolean :client_approval
      t.boolean :final_version_sent_to_client
      t.boolean :payment_received
      t.boolean :completed

      t.timestamps null: false
    end
  end
end
