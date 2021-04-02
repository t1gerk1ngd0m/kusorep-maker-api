# == Schema Information
#
# Table name: themes
#
#  id         :uuid             not null, primary key
#  content    :text             default(""), not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Theme < ApplicationRecord
  has_many :members, dependent: :destroy
  has_many :kusoreps, dependent: :destroy

  validates :content, presence: true
end
