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
require 'rails_helper'

RSpec.describe Talk, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
