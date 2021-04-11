# == Schema Information
#
# Table name: rooms
#
#  id                  :uuid             not null, primary key
#  theme(ルームのお題) :text             default("")
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#
require "test_helper"

class RoomTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
