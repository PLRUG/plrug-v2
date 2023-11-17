# == Schema Information
#
# Table name: topics
#
#  id          :integer          not null, primary key
#  description :text
#  title       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  talk_id     :integer          not null
#
# Indexes
#
#  index_topics_on_talk_id  (talk_id)
#
# Foreign Keys
#
#  talk_id  (talk_id => talks.id)
#
FactoryBot.define do
  factory :topic, class: 'Event::Topic' do
    title { FFaker::Book.title }
    description { FFaker::Lorem.paragraphs(rand(1..3)) }
    talk { association :talk }
  end
end
