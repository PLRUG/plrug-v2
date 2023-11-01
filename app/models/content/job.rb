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
module Content
  class Job < ApplicationRecord
    extend FriendlyId
    friendly_id :title, use: [:slugged]

    # Callbacks
    after_create :create_coordinates

    # Scope
    scope :lasts,    -> { order(created_at: :desc) }
    scope :active,   -> { where(status: :active) }
    scope :expired,  -> { where(status: :expired) }

    # Enum
    enum :status, %i[active expired]

    # Relationships
    belongs_to :billing_type, class_name: 'Billing::BillingType'
    belongs_to :country,      class_name: 'Location::Country'
    belongs_to :city,         class_name: 'Location::City'
    belongs_to :currency,     class_name: 'Billing::Currency'
    belongs_to :job_kind,     class_name: 'Content::JobKind'
    belongs_to :job_level,    class_name: 'Content::JobLevel'
    belongs_to :user,         class_name: 'User::User'

    # Validations
    validates :title,       presence: true
    validates :description, presence: true
    validates :address,     presence: true
    validates :zip_code,    presence: true

    # Methods
    def create_coordinates
      GeolocationService.new(self).geocode_record
    end
  end
end
