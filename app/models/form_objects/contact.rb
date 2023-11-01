# frozen_string_literal: true

module FormObjects
  class Contact
    include ActiveModel::Validations
    include ActiveModel::Conversion

    attr_accessor :name, :email, :message

    def initialize(name, email, message)
      @name = name
      @email = email
      @message = message
    end

    def persisted?
      false
    end
  end
end
