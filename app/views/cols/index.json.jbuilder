json.array!(@cols) do |col|
  json.extract! col, :id, :name, :age, :sub
  json.url col_url(col, format: :json)
end
