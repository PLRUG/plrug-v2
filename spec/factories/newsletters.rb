# == Schema Information
#
# Table name: newsletters
#
#  id         :integer          not null, primary key
#  email      :string
#  status     :boolean          default(NULL)
#  token      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
FactoryBot.define do
  factory :newsletter do

    # Attributes
    email { FFaker::Internet.email }    
    
    trait :active do
      status { 'active' }
      token { SecureRandom.urlsafe_base64(32) }
    end

    trait :inactive do
      status { 'inactive' }
      token { nil }
    end
  end
end
