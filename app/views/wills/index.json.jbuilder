json.array!(@wills) do |will|
  json.extract! will, :id, :user_id, :client_id, :spouse, :spouse_name, :relationship, :spouse_executor, :second_executor, :second_executor_name, :second_executor_city, :alternate_executor, :alternate_executor_name, :alternate_executor_city, :alternate_executor_country, :children, :spouse_guardian, :alternate_guardian, :alternate_guardian_address, :gift_conditions, :gift_conditions_age, :specific_gifts, :estate_residue, :wipeout_clause, :wipeout_distribution, :pets, :pet_details_carers, :additional_clauses, :notes, :draft_created, :draft_sent_to_client, :client_approval, :final_version_sent_to_client, :payment_received, :completed
  json.url will_url(will, format: :json)
end
