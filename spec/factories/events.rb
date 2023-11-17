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
FactoryBot.define do
  factory :event, class: 'Event::Event' do
    name { "PLRUG #{rand(1..50)} Warsaw" }
    date { Date.today + rand(2..5).days }
    user { association :user }

    trait :with_talks do
      after(:create) do |event, _evaluator|
        FactoryBot.create_list(:talk, 5, event: event)
      end
    end
  end
end
