json.array!(@pensions) do |pension|
  json.extract! pension, :id, :client_id, :user_id, :loa_signed, :loa_sent_to_provider, :completed
  json.url pension_url(pension, format: :json)
end
