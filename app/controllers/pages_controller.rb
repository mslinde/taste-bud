class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @events = policy_scope(Event).order(created_at: :asc)
    @events = Event.all
    @vibes = Vibe.all
    # might need for vibe filter
    # @search = Vibe.find(vibe_params).events

  end
end
