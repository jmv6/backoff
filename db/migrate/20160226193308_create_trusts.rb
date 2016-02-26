class CreateTrusts < ActiveRecord::Migration
  def change
    drop_table :trusts
    create_table :trusts do |t|
      t.references :user, index: true, foreign_key: true
      t.references :client, index: true, foreign_key: true
      t.string :provider
      t.string :type_of_cover
      t.string :total_value
      t.boolean :payment_received
      t.boolean :loa_sent_to_client
      t.boolean :loa_signed_and_received
      t.boolean :loa_sent_to_provider
      t.boolean :information_received_from_provider
      t.boolean :trust_docs_sent_to_client
      t.boolean :trust_docs_signed_and_received
      t.boolean :sent_to_trustees
      t.boolean :signed_by_trustees
      t.boolean :completed
      t.text :notes

      t.timestamps null: false
    end
  end
end
