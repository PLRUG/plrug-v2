# == Schema Information
#
# Table name: jobs
#
#  id              :integer          not null, primary key
#  address         :string
#  apply_path      :string
#  clicks          :integer          default(0)
#  description     :text
#  latitude        :decimal(, )
#  longitude       :decimal(, )
#  max_amount      :float
#  min_amount      :float
#  remote          :boolean          default(FALSE)
#  renew_counter   :integer          default(0)
#  slug            :string
#  status          :integer
#  title           :string
#  views           :integer          default(0)
#  visits          :integer          default(0)
#  zip_code        :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  billing_type_id :integer
#  city_id         :integer
#  country_id      :integer
#  currency_id     :string
#  job_kind_id     :integer
#  job_level_id    :integer
#  user_id         :integer          not null
#
# Indexes
#
#  index_jobs_on_country_id    (country_id)
#  index_jobs_on_job_level_id  (job_level_id)
#  index_jobs_on_user_id       (user_id)
#
# Foreign Keys
#
#  country_id    (country_id => countries.id)
#  job_level_id  (job_level_id => job_levels.id)
#  user_id       (user_id => users.id)
#
FactoryBot.define do
  factory :job do

    # Attributes
    title { FFaker::Job.title }
    status { Job.statuses.keys.sample }
    remote { false }
    description { FFaker::Lorem.paragraphs(rand(8..12)).join }
    address { FFaker::AddressPL.street_address }
    zip_code { FFaker::AddressPL.zip_code }
    renew_counter { 0 }
    apply_path { FFaker::Internet.http_url }

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
    job_level { association :job_level }
    city { association :city }
    country { association :country }
    user { association :user }
    
    # Traits    
    trait :remote do
      remote { true }
    end

    # Callbacks
    after(:create) do |job, evaluator|
      GeolocationService.new(job).geocode_record
    end
  end
end
