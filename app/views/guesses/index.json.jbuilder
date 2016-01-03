json.array!(@guess) do |guess|
  json.extract! guess, :id, :name, :value, :user_id
  json.url guess_url(guess, format: :json)
end
