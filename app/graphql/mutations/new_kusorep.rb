class Mutations::NewKusorep < Mutations::BaseMutation
  null true

  argument :content, String, '内容', required: true
  argument :member_id, ID, 'メンバーID', required: true

  field :kusorep, Types::Objects::KusorepType, null: false
  field :member, Types::Objects::MemberType, null: false

  def resolve(**args)
    attrs = args.to_h.compact
    member = Member.find(args[:member_id])
    {
      member: member,
      kusorep: member.kusoreps.create!(content: args[:content])
    }
  end
end
