# == Schema Information
#
# Table name: votes
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  talk_id    :integer          not null
#  user_id    :integer          not null
#
# Indexes
#
#  index_votes_on_talk_id  (talk_id)
#  index_votes_on_user_id  (user_id)
#
# Foreign Keys
#
#  talk_id  (talk_id => talks.id)
#  user_id  (user_id => users.id)
#
FactoryBot.define do
  factory :vote, class: 'Event::Talk' do
    talk { nil }
    user { nil }
  end
end
