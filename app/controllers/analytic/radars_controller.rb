# frozen_string_literal: true

module Analytic
  class RadarsController < ApplicationController

    # GET /radars
    def index
      @jobs = Job.all.load_async
    end
  end
end