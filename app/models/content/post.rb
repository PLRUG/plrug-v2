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
module Content
  class Post < ApplicationRecord
    extend FriendlyId
    friendly_id :title, use: [:slugged]

    # Scope
    scope :most_read,  -> { order(views: :desc) }
    scope :recomended, ->(post) { where.not(id: post.id).where(tags: post.tags.split(', ')) }

    # Uploader
    has_one_attached :thumbnail

    # Relationships
    # belongs_to :categories
    belongs_to :user, class_name: 'User::User'

    # Validations
    validates :title, presence: true, uniqueness: true, allow_blank: false
    validates :body,  presence: true, allow_blank: false, length: { minimum: 5, maximum: 5_000 }

    # Methods
    def self.tag_cloud
      all_tags    = Post.pluck(:tags).join(',').split(',').map(&:strip)
      unique_tags = all_tags.uniq

      unique_tags.map do |tag|
        {
          tag: tag,
          count: all_tags.count(tag)
        }
      end
    end
  end
end
