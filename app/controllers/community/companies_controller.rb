# frozen_string_literal: true

module Community
  class CompaniesController < ApplicationController
    before_action :set_company, only: [:show]
    before_action -> { ransack_search_for(User::User, params) }

    def index
      @companies = @q.result(distinct: true)
                     .where(kind: %i[company startup])
                     .order(createdt_at: :desc)

      @companies_count = @companies.count
      @companies = @companies.page(params[:page]).per(12)
    end

    def show
      @jobs = @company.jobs
                      .active
                      .order(created_at: :desc)
                      .page(params[:page])
                      .per(6)
    end

    private

    def set_company
      @company = User::User.friendly.find(params[:id])
    end
  end
end
