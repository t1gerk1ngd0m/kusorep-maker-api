class CreateRooms < ActiveRecord::Migration[6.1]
  def change
    enable_extension 'pgcrypto'

    create_table :rooms, id: :uuid do |t|
      t.timestamps
    end
  end
end
