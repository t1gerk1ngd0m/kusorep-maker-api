module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    field :rooms, Types::Objects::RoomType.connection_type, null: false
    def rooms
      Room.all
    end

    field :themes, Types::Objects::ThemeType.connection_type, null: false
    def themes
      Theme.all
    end

    field :room, Types::Objects::RoomType, null: false
    def room
      Room.order('RANDOM()').first
    end

    field :theme, Types::Objects::ThemeType, null: false
    def theme
      Theme.order('RANDOM()').first
    end
  end
end
