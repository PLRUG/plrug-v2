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
  factory :topic do
    title { "MyString" }
    description { "MyText" }
    talk { nil }
  end
end
