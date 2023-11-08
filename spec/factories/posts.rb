# == Schema Information
#
# Table name: posts
#
#  id         :integer          not null, primary key
#  body       :text
#  slug       :string
#  tags       :string
#  thumbnail  :string
#  title      :string
#  views      :integer          default(0)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer          not null
#
# Indexes
#
#  index_posts_on_user_id  (user_id)
#
# Foreign Keys
#
#  user_id  (user_id => users.id)
#

FactoryBot.define do
  factory :post, class_name: 'Content::Post' do

    # Attributes
    title { FFaker::Book.title }
    body { FFaker::Lorem.paragraphs(rand(8..12)).join }
    tags { FFaker::Tweet.tags }

    # Associations
    user { association :user }

    # Callbacks
    after(:create) do |post, evaluator|
      FileAttachService.new(post.thumbnail)
    end
  end
end
