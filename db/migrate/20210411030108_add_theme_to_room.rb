class AddThemeToRoom < ActiveRecord::Migration[6.1]
  def change
    add_column :rooms, :theme, :text, null: true, default: '', comment: 'ルームのお題'
  end
end
