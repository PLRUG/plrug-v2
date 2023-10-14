# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  address                :string
#  admin                  :boolean          default(FALSE)
#  avatar                 :string
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  kind                   :integer          default("user")
#  latitude               :decimal(, )
#  longitude              :decimal(, )
#  name                   :string
#  referral_link          :string
#  remember_created_at    :datetime
#  reset_password_sent_at :datetime
#  reset_password_token   :string
#  slug                   :string
#  username               :string
#  zip_code               :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  city_id                :integer
#  country_id             :integer
#
# Indexes
#
#  index_users_on_city_id               (city_id)
#  index_users_on_country_id            (country_id)
#  index_users_on_email                 (email) UNIQUE
#  index_users_on_reset_password_token  (reset_password_token) UNIQUE
#
# Foreign Keys
#
#  city_id     (city_id => cities.id)
#  country_id  (country_id => countries.id)
#
require 'open-uri'

FactoryBot.define do
  factory :user do

    # Attributes
    name { FFaker::Name.name }
    username { FFaker::Internet.user_name }
    email { FFaker::Internet.email }
    password { '!Test123' }
    password_confirmation { '!Test123' }
    address { FFaker::AddressPL.street_address }
    zip_code { FFaker::AddressPL.zip_code }
    admin { false }

    # Admin
    trait :admin do
      name { 'Renato Franco' }
      email { 'renato@plrug.pl' }
      password { 'rubyHero23' }
      password_confirmation { 'rubyHero23' }
      admin { true }
    end

    # Associations
    country { association :country }
    city { association :city }

    # Callbacks
    after(:create) do |user, evaluator|
      FileAttachService.new(user.avatar)
      GeolocationService.new(user).geocode_record
    end
  end
end
