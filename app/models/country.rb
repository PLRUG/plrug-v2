# == Schema Information
#
# Table name: countries
#
#  id         :integer          not null, primary key
#  name       :string
#  slug       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Country < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: [:slugged]

  # Relationships
  has_many :cities

  # Validations
  validates :name, presence: true, uniqueness: true, allow_blank: false

  # Methods
  def capital
    cities.where(capital: true).first
  end
end
