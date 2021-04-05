class Mutations::NewRoomAndMember < Mutations::BaseMutation
  null true

  argument :name, String, '名前', required: true

  field :room, Types::Objects::RoomType, null: false
  field :member, Types::Objects::MemberType, null: false

  def resolve(**args)
    attrs = args.to_h.compact

    room = Room.create
    member = room.members.create(name: args[:name])
    {
      room: room,
      member: member
    }
  end
end
