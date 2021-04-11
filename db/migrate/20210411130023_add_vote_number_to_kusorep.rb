class AddVoteNumberToKusorep < ActiveRecord::Migration[6.1]
  def change
    add_column :kusoreps, :vote_number, :integer, null: false, default: 0
  end
end
