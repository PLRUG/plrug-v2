# == Schema Information
#
# Table name: newsletters
#
#  id         :integer          not null, primary key
#  email      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Newsletter < ApplicationRecord

  # Validations
  validates :email, presence: true, uniqueness: true, allow_blank: false
end
