# == Schema Information
#
# Table name: kusoreps
#
#  id         :bigint           not null, primary key
#  content    :text             default(""), not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  member_id  :uuid             not null
#  theme_id   :uuid             not null
#
# Indexes
#
#  index_kusoreps_on_member_id  (member_id)
#  index_kusoreps_on_theme_id   (theme_id)
#
# Foreign Keys
#
#  fk_rails_...  (member_id => members.id)
#  fk_rails_...  (theme_id => themes.id)
#
class Kusorep < ApplicationRecord
  belongs_to :theme
  belongs_to :member

  validates :content, presence: true
end
