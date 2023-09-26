# == Schema Information
#
# Table name: currencies
#
#  id         :integer          not null, primary key
#  name       :string
#  slug       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Currency < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: [:slugged]

  # Relationships
  has_many :jobs

  # Validations
  validates :name, presence: true, uniqueness: true, allow_blank: false
end
