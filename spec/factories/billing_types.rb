# == Schema Information
#
# Table name: billing_types
#
#  id         :integer          not null, primary key
#  name       :string
#  slug       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
FactoryBot.define do
  factory :billing_type, class: 'Billing::BillingType' do

    # Attributes
    name { 'Yearly' }

    trait :monthly do
      name { 'Monthly' }
    end

    trait :fortnight do
      name { 'Fortnight' }
    end

    trait :weekly do
      name { 'Weekly' }
    end

    trait :daily do
      name { 'Daily' }
    end

    trait :hourly do
      name { 'Hourly' }
    end
  end
end
