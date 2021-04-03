class Mutations::NewTheme < Mutations::BaseMutation
  null true

  argument :content, String, '内容', required: true

  field :theme, Types::Objects::ThemeType, null: false

  def resolve(**args)
    attrs = args.to_h.compact
    { theme: Theme.create!(attrs) }
  end
end
