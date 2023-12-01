# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  about                  :text
#  address                :string
#  admin                  :boolean          default(FALSE)
#  avatar                 :string
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  kind                   :integer          default("user")
#  latitude               :decimal(, )
#  longitude              :decimal(, )
#  name                   :string
#  provider               :string
#  referral_link          :string
#  remember_created_at    :datetime
#  reset_password_sent_at :datetime
#  reset_password_token   :string
#  slug                   :string
#  uid                    :string
#  username               :string
#  zip_code               :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  city_id                :integer          not null
#  country_id             :integer          not null
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
module User
  class User < ApplicationRecord
    extend FriendlyId
    friendly_id :username, use: [:slugged]

    # Includes
    include OmniauthHandling
    include UserInterface

    # Enum
    enum kind: %i[user company startup]

    # Callbacks
    before_create :set_kind
    after_create  :create_referral_link
    after_create  :create_coordinates

    # Devise Configuration
    devise   :database_authenticatable, :registerable,
             :recoverable, :rememberable, :validatable,
             :omniauthable, omniauth_providers: %i[github]

    # Relationships
    has_many :events, class_name: 'Event::Event',  dependent: :delete_all
    has_many :posts,  class_name: 'Content::Post', dependent: :delete_all
    has_many :jobs,   class_name: 'Content::Job',  dependent: :delete_all

    belongs_to :country, class_name: 'Location::Country', optional: true
    belongs_to :city,    class_name: 'Location::City',    optional: true

    # Validations
    # validates :address,  presence: true, allow_blank: false, on: :update
    # validates :zip_code, presence: true, allow_blank: false, on: :update

    def set_kind
      self.kind = 'company'
    end
  end
end
