class Types::Objects::RoomType < Types::BaseObject
  field :id, ID, 'ID', null: false
  field :created_at, Types::Scalars::DateTime, '作成日時', null: false
  field :updated_at, Types::Scalars::DateTime, '更新日時', null: false

  field :members, [Types::Objects::MemberType], null: true
  def members
    object.members
  end
end
