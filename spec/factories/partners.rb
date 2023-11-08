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
FactoryBot.define do
  factory :partner, class: 'Community::Partner' do

    # Attributes
    name { FFaker::Company.name }
    kind { Partner::PARTNER_KINDS.sample }
    url_path { FFaker::Internet.http_url }

    # Associations
    user { association :user }
    
    # Callbacks
    after(:create) do |user, evaluator|
      FileAttachService.new(partner.logo)
    end
  end
end
