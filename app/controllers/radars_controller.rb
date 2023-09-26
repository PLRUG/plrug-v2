# frozen_string_literal: true

class RadarsController < ApplicationController
  def index
    @jobs = Job.all.load_async
  end
end