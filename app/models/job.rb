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
class Job < ApplicationRecord
  
  # Relationships
  belongs_to :billing_type
  belongs_to :city
  belongs_to :currency
  belongs_to :job_kind
  belongs_to :user

  # Validations
  validates :title, presence: true
  validates :description, presence: true
end
