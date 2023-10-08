# frozen_string_literal: true

module Currencies
  class UpdateCurrencyOrganizer
    include Interactor::Organizer

    organize FindCurrency, UpdateCurrency
  end
end
