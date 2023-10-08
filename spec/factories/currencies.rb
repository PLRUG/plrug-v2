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
FactoryBot.define do
  factory :currency do

    # Attributes
    name { FFaker::Currency.code }
  end
end