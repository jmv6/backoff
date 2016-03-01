class CreateInfos < ActiveRecord::Migration
  def change
    create_table :infos do |t|
      t.string :first_name
      t.string :surname
      t.string :email
      t.string :telephone_number
      t.boolean :financial_review
      t.boolean :estate_planning
      t.boolean :investments
      t.text :notes

      t.timestamps null: false
    end
  end
end
