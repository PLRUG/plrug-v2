# frozen_string_literal: true

module Jobs
  class IncrementJobVisits
    include Interactor

    delegate :job, :session, to: :context

    def call
      increment_visits
    end

    private

    def increment_visits
      visited_pages = session[:visited_pages] ||= []

      unless visited_pages.include?(job.id)
        visited_pages << job.id
        job.increment!(:visits)
        job.reload
      end
    end

    def reload_job
      job.reload
    end
  end
end
