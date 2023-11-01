# == Schema Information
#
# Table name: cities
#
#  id         :integer          not null, primary key
#  capital    :boolean          default(FALSE)
#  name       :string
#  slug       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  country_id :integer
#
# Indexes
#
#  index_cities_on_country_id  (country_id)
#
# Foreign Keys
#
#  country_id  (country_id => countries.id)
#
module Location
  class City < ApplicationRecord
    extend FriendlyId
    friendly_id :name, use: [:slugged]

    # Relationships
    has_many :jobs,      class_name: 'Content::Job'
    belongs_to :country, class_name: 'Location::Country'

    # Validations
    validates :name,    presence: true, uniqueness: false, allow_blank: false
    validates :capital, presence: true, inclusion: { in: %w[true false] }
  end
end
