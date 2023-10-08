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
FactoryBot.define do
  factory :group do

    # Attributes
    name { FFaker::Company.name }
    url { FFaker::Internet.url }
  end
end
