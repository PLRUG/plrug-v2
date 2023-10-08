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
FactoryBot.define do
  factory :city do

    # Attributes
    name { FFaker::Address.city }
    capital { false }

    # Associations
    country { association :country }
    
    # Traits
    trait :capital do
      capital { true }
    end
  end
end
