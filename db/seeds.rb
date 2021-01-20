10.times do
  Blog.create(
    title: Faker::Food.dish,
    content: Faker::Food.description
  )
end
