# == Schema Information
#
# Table name: members
#
#  id         :uuid             not null, primary key
#  name       :string           default(""), not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  room_id    :uuid             not null
#
# Indexes
#
#  index_members_on_room_id  (room_id)
#
# Foreign Keys
#
#  fk_rails_...  (room_id => rooms.id)
#
class Member < ApplicationRecord
  belongs_to :room
end
