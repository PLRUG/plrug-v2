# == Schema Information
#
# Table name: partners
#
#  id         :integer          not null, primary key
#  kind       :integer
#  logo       :string
#  name       :string
#  slug       :string
#  url_path   :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer          not null
#
# Indexes
#
#  index_partners_on_user_id  (user_id)
#
# Foreign Keys
#
#  user_id  (user_id => users.id)
#
require 'rails_helper'

RSpec.describe Partner, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
