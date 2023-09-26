# frozen_string_literal: true

class JobsController < ApplicationController
  before_action -> { ransack_search_for(Job, params) }
  before_action :set_job, only: [:show, :edit, :update, :destroy]

  layout 'jobs'

  # GET /jobs
  def index
    @newsletter = Newsletter.new
    @jobs = @q.result(distinct: true)
              .includes(:city, :job_kind)
              .page(params[:page])
              .per(5)
  end

  # GET /jobs/new
  def new
    @job = Job.new
  end

  # POST /jobs/
  def create
    job = Job.new(job_params)

    if job.save
      flash[:notice] = 'Job created with success.'
      redirect_to job_path(job)
    else
      render :new
    end
  end

  # GET /jobs/:id
  def show; end

  # GET /jobs/:id/edit
  def edit; end

  # PUT /jobs/:id
  def update
    if @job.update(job_params)
      flash[:notice] = 'Job updated with success.'
      redirect_to job_path(job)
    else
      render :edit
    end
  end

  # DELETE /jobs/:id
  def destroy
    @post.destroy
    redirect_to posts_path, notice: 'Job removed'
  end

  private

    def set_job
      @job = Job.find(params[:id])
    end

    def job_params
      params.require(:job)
        .permit(:title, :kind, :location, :apply_path, :remote,
          :description, :min_amount, :max_amount, :currency, :billing_type)
    end
end