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
FactoryBot.define do
  factory :talk, class: 'Event::Talk' do
    title { FFaker::Book.title }
    about { FFaker::Lorem.paragraphs(rand(1..3)) }
    youtube_url { FFaker::Youtube.embed_url }
    github_source_link { FFaker::Internet.http_url }
    speaker_name { FFaker::Name.name }
    event { association :event }
    user { association :user }

    trait :with_topics do
      after(:create) do |talk, _evaluator|
        FactoryBot.create(:topic, talk: talk)
      end
    end
  end
end
