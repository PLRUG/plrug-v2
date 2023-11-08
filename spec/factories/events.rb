# == Schema Information
#
# Table name: events
#
#  id         :integer          not null, primary key
#  date       :date
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer          not null
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
    name { "MyString" }
    date { "2023-10-16" }
    user { nil }
  end
end
