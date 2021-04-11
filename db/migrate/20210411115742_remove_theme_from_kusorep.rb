class RemoveThemeFromKusorep < ActiveRecord::Migration[6.1]
  def change
    remove_foreign_key :kusoreps, :themes
    remove_reference :kusoreps, :theme, type: :uuid, null: false
  end
end
