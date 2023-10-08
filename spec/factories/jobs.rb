# == Schema Information
#
# Table name: jobs
#
#  id              :integer          not null, primary key
#  apply_path      :string
#  clicks          :integer          default(0)
#  description     :text
#  max_amount      :float
#  min_amount      :float
#  remote          :boolean          default(FALSE)
#  renew_counter   :integer          default(0)
#  status          :integer
#  title           :string
#  views           :integer          default(0)
#  visits          :integer          default(0)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  billing_type_id :integer
#  city_id         :integer
#  currency_id     :string
#  job_kind_id     :integer
#  user_id         :integer          not null
#
# Indexes
#
#  index_jobs_on_user_id  (user_id)
#
# Foreign Keys
#
#  user_id  (user_id => users.id)
#
FactoryBot.define do
  factory :job do

    # Attributes
    title { FFaker::Job.title }
    status { Job::STATUS.sample }
    remote { false }
    description { FFaker::Lorem.paragraphs(rand(8..12)).join }
    renew_counter { 0 }
    apply_path { FFaker::Internet.http_url }
    tags { FFaker::Tweet.tags }

    # Analytics
    clicks { 0 }
    views { 0 }
    visits { 0 }

    # Salary Range
    max_amount { rand(2_000...3_000) }
    min_amount { rand(3_000...7_000) }

    # Associations
    billing_type { association :billing_type }
    currency { association :currency }
    job_kind { association :job_kind }
    city { association :city }
    user { association :user }
    
    # Traits    
    trait :remote do
      remote { true }
    end
  end
end
