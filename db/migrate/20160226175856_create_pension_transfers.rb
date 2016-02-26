class CreatePensionTransfers < ActiveRecord::Migration
  def change
    create_table :pension_transfers do |t|
      t.references :client, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true
      t.boolean :loa_signed
      t.boolean :loa_sent_to_provider
      t.boolean :completed

      t.timestamps null: false
    end
  end
end
