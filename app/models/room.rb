# == Schema Information
#
# Table name: rooms
#
#  id                  :uuid             not null, primary key
#  theme(ルームのお題) :text             default("")
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#
class Room < ApplicationRecord
  has_many :members
end
