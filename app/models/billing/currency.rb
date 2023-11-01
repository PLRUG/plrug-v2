# == Schema Information
#
# Table name: currencies
#
#  id         :integer          not null, primary key
#  abbrv      :string
#  name       :string
#  slug       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
module Billing
  class Currency < ApplicationRecord
    extend FriendlyId
    friendly_id :name, use: [:slugged]

    # Relationships
    has_many :jobs, class_name: 'Content::Job'

    # Validations
    validates :name, presence: true, uniqueness: true, allow_blank: false
    validates :abbrv, presence: true, uniqueness: true, allow_blank: false
  end
end
