# frozen_string_literal:

module Partners
  class FindPartner
    include Interactor

    delegate :id, to: :context

    def call
      find_partner
    rescue ActiveRecord::RecordNotFound => e
      context.fail!(error: e.message)
    end

    private

    def find_partner
      context.partner = Marketing::Partner.find(id)
    end
  end
end
