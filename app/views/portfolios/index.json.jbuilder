json.array!(@portfolios) do |portfolio|
  json.extract! portfolio, :id, :client_name, :picture1, :picture2, :description
  json.url portfolio_url(portfolio, format: :json)
end
