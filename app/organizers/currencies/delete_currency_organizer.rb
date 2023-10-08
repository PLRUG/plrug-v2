# frozen_string_literal: true

module Currencies
  class DeleteCurrencyOrganizer
    include Interactor::Organizer

    organize FindCurrency, DeleteCurrency
  end
end
