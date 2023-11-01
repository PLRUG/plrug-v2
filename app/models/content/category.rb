# == Schema Information
#
# Table name: categories
#
#  id         :integer          not null, primary key
#  name       :string
#  slug       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
module Content
  class Category < ApplicationRecord
    extend FriendlyId
    friendly_id :name, use: [:slugged]

    # Validations
    validates :name, presence: true, uniqueness: true, allow_blank: false
  end
end
