# frozen_string_literal: true

module Company
  class ContactsController < ApplicationController

    # GET /contact
    def index; end

    # POST /contact
    def create
      data = contact_params
      @contact = FormObjects::Contact.new(data[:name], data[:email], data[:message])

      flash[:notice] = if contact.valid?
                         'Message sent with success.'
                       else
                         'Failed to send message, try again.'
                       end

      redirect_to original_path
    end

    private

    def contact_params
      params.require(:contact).permit(:name, :email, :message)
    end
  end
end