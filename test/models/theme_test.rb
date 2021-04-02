# == Schema Information
#
# Table name: themes
#
#  id         :uuid             not null, primary key
#  content    :text             default(""), not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require "test_helper"

class ThemeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
