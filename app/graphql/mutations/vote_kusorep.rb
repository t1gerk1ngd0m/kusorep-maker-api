class Mutations::VoteKusorep < Mutations::BaseMutation
  null true

  argument :id, ID, 'ID', required: true
  argument :is_vote, Boolean, '投票フラグ', required: true

  field :kusorep, Types::Objects::KusorepType, null: false

  def resolve(**args)
    kusorep = Kusorep.find(args[:id])
    if args[:is_vote]
      kusorep.update(vote_number: kusorep.vote_number + 1)
    else
      kusorep.update(vote_number: kusorep.vote_number - 1)
    end
    { kusorep: kusorep }
  end
end
