class Mutations::NewKusorep < Mutations::BaseMutation
  null true

  argument :content, String, '内容', required: true
  argument :member_id, ID, 'メンバーID', required: true
  argument :theme_id, ID, 'テーマID', required: true

  field :kusorep, Types::Objects::KusorepType, null: false
  field :theme, Types::Objects::KusorepType, null: false
  field :member, Types::Objects::MemberType, null: false

  def resolve(**args)
    attrs = args.to_h.compact
    member = Member.find(args[:member_id])
    theme = Theme.find(args[:theme_id])
    {
      member: member,
      theme: theme,
      kusorep: theme.kusoreps.create!(member: member, content: args[:content])
    }
  end
end
