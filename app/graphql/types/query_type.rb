Types::QueryType = GraphQL::ObjectType.define do
  name "Query"
  # Add root-level fields here.
  # They will be entry points for queries on your schema.

  field :first_blog, !Types::BlogType do
    resolve ->(_obj, _args, ctx) {
      Blog.first
    }
  end

    field :findBlog, Types::BlogType do
    description "return a blog"
    argument :id, types.Int
    resolve ->(obj, args, ctx) {
      Blog.find_by(id: args.id)
    }
  end

end
