# == Schema Information
#
# Table name: kusoreps
#
#  id         :bigint           not null, primary key
#  content    :text             default(""), not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  member_id  :uuid             not null
#
# Indexes
#
#  index_kusoreps_on_member_id  (member_id)
#
# Foreign Keys
#
#  fk_rails_...  (member_id => members.id)
#
require "test_helper"

class KusorepTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
