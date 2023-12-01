# frozen_string_literal: true

module Community
  class TalksController < ApplicationController
    before_action :authenticate_user!
    before_action :set_event

    def new
      @talk = Event::Talk.new
    end

    def create
      talk = current_user.talks.build(
        talk_params.merge(event_id: @event.id)
      )

      if talk.save
        redirect_to community_event_path(@event)
      else
        render :new
      end
    end

    private

    def set_event
      @event = Event::Event.friendly.find(params[:event_id])
    end
  
    def talk_params
      params.require(:event)
        .permit(:title, :about, :youtube_url, :github_source_link, :speaker_name)
    end
  end
end