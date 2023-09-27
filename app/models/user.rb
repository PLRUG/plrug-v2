# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  avatar                 :string
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  name                   :string
#  referral_link          :string
#  remember_created_at    :datetime
#  reset_password_sent_at :datetime
#  reset_password_token   :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#
# Indexes
#
#  index_users_on_email                 (email) UNIQUE
#  index_users_on_reset_password_token  (reset_password_token) UNIQUE
#
class User < ApplicationRecord

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # Relationships
  has_many :jobs

  # Callbacks
  # before_save :create_refferal_link, if: :valid?

  # Methods
  def default_avatar
    avatar || 'default.jpg'
  end

  # Method
  def create_refferal_link
    username = "#{name.downcase.split[0]}"
    based_token = "#{username}_#{SecureRandom.urlsafe_base64(6)}"
    self.referral_link = "app.onrop.pl/r/#{based_token}"
  end
end
