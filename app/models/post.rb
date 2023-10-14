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
class Post < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: [:slugged]

  # Scope
  scope :most_read,  -> { order(views: :desc) }
  scope :recomended, -> { where.not(id: id).where(tags: tags.split(', ')) }

  # Uploader
  has_one_attached :thumbnail

  # Relationships
  belongs_to :user

  # Validations
  validates :title, presence: true, uniqueness: true, allow_blank: false
  validates :body,  presence: true, allow_blank: false, length: { minimum: 5, maximum: 5_000 }

  # Methods
  def self.tag_Cloud
    all_tags    = Post.pluck(:tags).join(',').split(',').map(&:strip)
    unique_tags = all_tags.uniq

    tag_cloud = unique_tags.map do |tag|
      {
        tag: tag,
        count: all_tags.count(tag)
      }
    end
    
    sorted_tag_cloud
  end
end
