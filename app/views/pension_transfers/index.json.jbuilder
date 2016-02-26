json.array!(@pension_transfers) do |pension_transfer|
  json.extract! pension_transfer, :id, :client_id, :user_id, :loa_signed, :loa_sent_to_provider, :completed
  json.url pension_transfer_url(pension_transfer, format: :json)
end
