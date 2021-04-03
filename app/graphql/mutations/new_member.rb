class Mutations::NewMember < Mutations::BaseMutation
  null true

  argument :name, String, '名前', required: true
  argument :room_id, ID, 'ルームID', required: true

  field :member, Types::Objects::MemberType, null: false
  field :room, Types::Objects::RoomType, null: false

  def resolve(**args)
    attrs = args.to_h.compact
    room = Room.find(args[:room_id])
    {
      room: room,
      member: room.members.create!(attrs)
    }
  end
end
