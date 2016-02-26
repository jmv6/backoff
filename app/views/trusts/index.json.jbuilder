json.array!(@trusts) do |trust|
  json.extract! trust, :id, :user_id, :client_id, :provider, :type_of_cover, :total_value, :payment_received, :loa_sent_to_client, :loa_signed_and_received, :loa_sent_to_provider, :information_received_from_provider, :trust_docs_sent_to_client, :trust_docs_signed_and_received, :sent_to_trustees, :signed_by_trustees, :completed, :notes
  json.url trust_url(trust, format: :json)
end
