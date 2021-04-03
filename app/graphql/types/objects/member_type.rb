class Types::Objects::MemberType < Types::BaseObject
  field :id, ID, 'ID', null: false
  field :name, String, '名前', null: false
  field :created_at, Types::Scalars::DateTime, '作成日時', null: false
  field :updated_at, Types::Scalars::DateTime, '更新日時', null: false
end
