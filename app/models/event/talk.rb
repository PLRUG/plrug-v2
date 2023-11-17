# == Schema Information
#
# Table name: talks
#
#  id                 :integer          not null, primary key
#  about              :text
#  github_source_link :string
#  slug               :string
#  speaker_name       :string
#  title              :string
#  youtube_url        :string
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  event_id           :integer          not null
#  user_id            :integer          not null
#
# Indexes
#
#  index_talks_on_event_id  (event_id)
#  index_talks_on_user_id   (user_id)
#
# Foreign Keys
#
#  event_id  (event_id => events.id)
#  user_id   (user_id => users.id)
#
module Event
  class Talk < ApplicationRecord
    extend FriendlyId
    friendly_id :title, use: [:slugged]

    # Relationships
    has_many   :topics, class_name: 'Event::Topic', dependent: :delete_all
    belongs_to :event,  class_name: 'Event::Event'
    belongs_to :user,   class_name: 'User::User'

    # Validations
    validates :title, presence: true, uniqueness: true
    validates :about, presence: true
    validates :youtube_url, presence: true
    validates :speaker_name, presence: true
  
    # Methods
    def speaker
      speaker_name
    end
  end
end
