class Mutations::NewRoom < Mutations::BaseMutation
  null true

  field :room, Types::Objects::RoomType, null: false

  def resolve(**args)
    theme = Theme.order("RAND()").first.content
    { room: Room.create(theme: theme) }
  end
end
