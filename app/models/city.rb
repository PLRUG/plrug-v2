# == Schema Information
#
# Table name: cities
#
#  id         :integer          not null, primary key
#  name       :string
#  slug       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class City < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: [:slugged]

  # Relationships
  has_many :jobs

  # Validations
  validates :name, presence: true, uniqueness: false, allow_blank: false
end
