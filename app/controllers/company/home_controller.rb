# frozen_string_literal: true

module Company
  class HomeController < ApplicationController

    # GET /
    def index
      @groups = Group.all
    end
  end
end
