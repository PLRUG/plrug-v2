# == Schema Information
#
# Table name: groups
#
#  id         :integer          not null, primary key
#  name       :string
#  slug       :string
#  url        :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Group < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: [:slugged]

  # Validations
  validates :name, presence: true, uniqueness: false, allow_blank: false
  validates :url, presence: true, uniqueness: false, allow_blank: false
end
