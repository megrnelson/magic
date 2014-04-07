json.array!(@dogs) do |dog|
  json.extract! dog, :id, :name, :sex, :age, :color, :weight, :breed
  json.url dog_url(dog, format: :json)
end
