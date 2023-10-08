# == Schema Information
#
# Table name: job_kinds
#
#  id         :integer          not null, primary key
#  name       :string
#  slug       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
FactoryBot.define do
  factory :job_kind do

    # Attributes
    name { 'Full-time' }

    # Traits
    trait :part_time do
      name { 'Part-time' }
    end

    trait :contract do
      name { 'Contract' }
    end

    trait :temporary do
      name { 'Temporary' }
    end

    trait :volunteer do
      name { 'Volunteer' }
    end

    trait :internship do
      name { 'Internship' }
    end
  end
end
