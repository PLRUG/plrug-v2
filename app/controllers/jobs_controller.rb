# frozen_string_literal: true

class JobsController < ApplicationController
  before_action :set_job, only: [:show]

  def index
    @q = Ransack.search(params[:q])
    @jobs = @q.result(distinct: true)
              .available.page(params[:page])
  end

  def show; end

  private

  def set_job
    @job = Job.find(params[:id])
  end
end