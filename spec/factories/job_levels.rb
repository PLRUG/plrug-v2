# == Schema Information
#
# Table name: job_levels
#
#  id         :integer          not null, primary key
#  name       :string
#  slug       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
FactoryBot.define do
  factory :job_level, class: 'Content::JobLevel' do
    name { "MyString" }
    slug { "MyString" }
  end
end
