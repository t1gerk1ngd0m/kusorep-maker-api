class CreateKusoreps < ActiveRecord::Migration[6.1]
  def change
    create_table :kusoreps do |t|
      t.text :content, null: false, default: ''
      t.references :theme, type: :uuid, null: false, foreign_key: true
      t.references :member, type: :uuid, null: false, foreign_key: true

      t.timestamps
    end
  end
end
