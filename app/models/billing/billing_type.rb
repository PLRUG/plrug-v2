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
module Billing
  class BillingType < ApplicationRecord
    extend FriendlyId
    friendly_id :name, use: [:slugged]

    # Relationships
    has_many :jobs, class_name: 'Content::Job'

    # Validations
    validates :name, presence: true, uniqueness: true, allow_blank: false
  end
end
