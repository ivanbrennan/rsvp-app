class InvitesController < ApplicationController
  def new
    @user = User.new
    @event = Event.find(params[:event_id])
  end
end
