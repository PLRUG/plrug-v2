# == Schema Information
#
# Table name: newsletters
#
#  id         :integer          not null, primary key
#  email      :string
#  status     :boolean          default(NULL)
#  token      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
module Marketing
  class Newsletter < ApplicationRecord

    # Enum
    enum status: %i[active inactive]

    # Validations
    validates :email, presence: true, uniqueness: true, allow_blank: false
    validates :token, uniqueness: true, allow_blank: true
  end
end
