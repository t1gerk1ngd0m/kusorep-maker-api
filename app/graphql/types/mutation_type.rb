module Types
  class MutationType < Types::BaseObject
    # TODO: remove me
    field :test_field, String, null: false,
      description: "An example field added by the generator"
    def test_field
      "Hello World"
    end

    field :new_room, mutation: Mutations::NewRoom
    field :new_theme, mutation: Mutations::NewTheme
    field :new_member, mutation: Mutations::NewMember
    field :new_kusorep, mutation: Mutations::NewKusorep
    field :new_room_and_member, mutation: Mutations::NewRoomAndMember
  end
end
