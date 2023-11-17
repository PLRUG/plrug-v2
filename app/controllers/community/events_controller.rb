# frozen_string_literal: true

module Community
  class EventsController < ApplicationController
    before_action :set_event, only: [:show]

    def index
      @events = Event::Event.all.order(created_at: :desc)
                            .page(params[:page])
                            .per(8)
    end

    def show
      @talks = @event.talks
                     .order(created_at: :desc)
                     .page(params[:page])
                     .per(12)
    end

    private

    def set_event
      @event = Event::Event.friendly.find(params[:id])
    end
  end
end