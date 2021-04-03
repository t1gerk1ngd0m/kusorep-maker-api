class Types::Objects::ThemeType < Types::BaseObject
  field :id, ID, 'ID', null: false
  field :content, String, '内容', null: false
  field :created_at, Types::Scalars::DateTime, '作成日時', null: false
  field :updated_at, Types::Scalars::DateTime, '更新日時', null: false

  field :kusoreps, Types::Objects::KusorepType.connection_type, null: true
  def kusoreps
    object.kusoreps
  end
end
