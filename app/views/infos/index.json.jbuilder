json.array!(@infos) do |info|
  json.extract! info, :id, :first_name, :surname, :email, :telephone_number, :financial_review, :estate_planning, :investments, :notes
  json.url info_url(info, format: :json)
end
