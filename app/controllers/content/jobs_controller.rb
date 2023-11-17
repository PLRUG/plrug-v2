# frozen_string_literal: true

module Content
  class JobsController < ApplicationController
    before_action :authenticate_user!, only: %i[new create edit update destroy]
    before_action :set_job, only: %i[show edit update destroy expire renew click]

    before_action -> { ransack_search_for(Content::Job, params) }

    layout 'jobs'

    # GET /jobs
    def index
      @newsletter = Marketing::Newsletter.new
      @jobs = @q.result(distinct: true)
                .includes(:city, :job_kind)
                .order(created_at: :asc)
                .page(params[:page])
                .per(6)
    end

    # GET /jobs/new
    def new
      @job = Content::Job.new
    end

    # POST /jobs/
    def create
      byebug

      result = Jobs::CreateJob.call(params: job_params, user: current_user)

      if result.success?
        flash[:notice] = 'Job created with success.'
        redirect_to content_job_path(job)
      else
        render :new
      end
    end

    # GET /jobs/:id
    def show
      Jobs::ViewJobOrganizer.call(id: @job.id, session: session)
    end

    # GET /jobs/:id/edit
    def edit; end

    # PUT /jobs/:id
    def update
      params = job_params
      result = Jobs::UpdateJobOrganizer.call(id: @job.id, params: params)

      if result.success?
        flash[:notice] = 'Job updated with success.'
        redirect_to content_job_path(job)
      else
        render :edit
      end
    end

    # DELETE /jobs/:id
    def destroy
      result = Jobs::DeleteJobOrganizer.call(id: @job.id)

      if result.success?
        flash[:notice] = 'Job successfully removed.'
        redirect_to content_jobs_path
      else
        flash[:notice] = 'Failed to delete job, try again.'
        redirect_to content_job_path(@job)
      end
    end

    # POST /jobs/:id/expire
    def expire
      result = Jobs::ToggleJobStatusOrganizer.call(id: @job.id)

      if result.success?
        flash[:notice] = 'Job expired with success.'
        redirect_to content_job_path(result.job)
      end
    end

    # POST /jobs/:id/renew
    def renew
      result = Jobs::ToggleJobStatusOrganizer.call(id: @job.id)

      if result.success?
        flash[:notice] = 'Job activated with success.'
        redirect_to content_job_path(result.job)
      end
    end

    # POST /jobs/:id/click
    def click; end

    private

    def set_job
      @job = Jobs::FindJob.call(id: params[:id]).job
    end

    def job_params
      params.require(:content_job)
            .permit(:title, :job_kind_id, :job_level_id, :location, :apply_path, :remote,
                    :description, :min_amount, :max_amount, :currency,
                    :billing_type_id, :currency_id, :address, :zipcode,
                    :city_id, :country_id)
    end
  end
end
