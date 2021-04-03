class Mutations::NewRoom < Mutations::BaseMutation
  null true

  field :room, Types::Objects::RoomType, null: false

  def resolve(**args)
    { room: Room.create }
  end
end
