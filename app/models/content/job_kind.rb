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
module Content
  class JobKind < ApplicationRecord
    extend FriendlyId
    friendly_id :name, use: [:slugged]

    # Relationships
    has_many :jobs, class_name: 'Content::JobKind'

    # Validations
    validates :name, presence: true, uniqueness: true, allow_blank: false
  end
end
