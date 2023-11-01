# == Schema Information
#
# Table name: talks
#
#  id         :integer          not null, primary key
#  about      :text
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  events_id  :integer          not null
#  user_id    :integer          not null
#
# Indexes
#
#  index_talks_on_events_id  (events_id)
#  index_talks_on_user_id    (user_id)
#
# Foreign Keys
#
#  events_id  (events_id => events.id)
#  user_id    (user_id => users.id)
#
module Event
  class Talk < ApplicationRecord
    extend FriendlyId
    friendly_id :title, use: [:slugged]

    # Relationships
    has_many   :topics, class_name: 'Event::Topic', dependent: :delete_all
    belongs_to :events, class_name: 'Event::Event'
    belongs_to :user,   class_name: 'User::User'

    # Validations
    validates :title, presence: true, uniqueness: true
    validates :about, presence: true
  end
end
