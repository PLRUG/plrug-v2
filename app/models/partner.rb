# frozen_string_literal: true

# == Schema Information
#
# Table name: partners
#
#  id         :integer          not null, primary key
#  kind       :integer
#  logo       :string
#  name       :string
#  slug       :string
#  url_path   :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer          not null
#
# Indexes
#
#  index_partners_on_user_id  (user_id)
#
# Foreign Keys
#
#  user_id  (user_id => users.id)
#
class Partner < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: [:slugged]

  # Kinds
  PARTNER_KINDS = %i[company school university government other]

  # Uploader
  has_one_attached :logo

  # Enum
  enum kind: PARTNER_KINDS

  # Relationships
  belongs_to :user

  # Validations
  validates :name, presence: true, uniqueness: true, allow_blank: false
  validates :url_path, presence: true, uniqueness: true, allow_blank: false
  validates :kind, presence: true, inclusion: { in: PARTNER_KINDS }
end
