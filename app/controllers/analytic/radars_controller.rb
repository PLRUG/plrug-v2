# frozen_string_literal: true

module Analytic
  class RadarsController < ApplicationController

    # GET /radars
    def index
      @jobs = Content::Job.active
                          .pluck(:id, :title, :latitude, :longitude)
    end
  end
end
