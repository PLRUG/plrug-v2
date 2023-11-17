# == Schema Information
#
# Table name: events
#
#  id          :integer          not null, primary key
#  date        :date
#  description :text
#  name        :string
#  slug        :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :integer          not null
#
# Indexes
#
#  index_events_on_user_id  (user_id)
#
# Foreign Keys
#
#  user_id  (user_id => users.id)
#
module Event
  class Event < ApplicationRecord
    extend FriendlyId
    friendly_id :name, use: [:slugged]

    # Relationships
    has_many :talks,  class_name: 'Event::Talk', dependent: :delete_all
    belongs_to :user, class_name: 'User::User'

    # Validations
    validates :name, presence: true, uniqueness: true, allow_blank: false
    validates :date, presence: true, allow_blank: false
  end
end
