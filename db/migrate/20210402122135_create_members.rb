class CreateMembers < ActiveRecord::Migration[6.1]
  def change
    create_table :members, id: :uuid do |t|
      t.references :room, type: :uuid, null: false, foreign_key: true
      t.string :name, null: false, default: ''

      t.timestamps
    end
  end
end
