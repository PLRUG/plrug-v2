# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  admin                  :boolean          default(FALSE)
#  avatar                 :string
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  kind                   :integer          default("user")
#  name                   :string
#  referral_link          :string
#  remember_created_at    :datetime
#  reset_password_sent_at :datetime
#  reset_password_token   :string
#  slug                   :string
#  username               :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  city_id                :integer
#  country_id             :integer
#
# Indexes
#
#  index_users_on_city_id               (city_id)
#  index_users_on_country_id            (country_id)
#  index_users_on_email                 (email) UNIQUE
#  index_users_on_reset_password_token  (reset_password_token) UNIQUE
#
# Foreign Keys
#
#  city_id     (city_id => cities.id)
#  country_id  (country_id => countries.id)
#
class User < ApplicationRecord
  extend FriendlyId
  friendly_id :username, use: [:slugged]

  # Enum
  enum kind: %i[user company startup]

  # Callbacks
  after_create :generate_referral_link

  # Devise
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # Relationships
  has_many :posts
  has_many :jobs

  belongs_to :country
  belongs_to :city

  # Methods
  def default_avatar
    avatar || 'default.jpg'
  end

  def kind?
    kind.eql?('user') ? 'Developer' : 'Company'
  end

  def generate_referral_link
    Users::CreateReferralLinkOrganizer.call(id: self.id)
  end
end
