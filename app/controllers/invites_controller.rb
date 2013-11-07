class InvitesController < ApplicationController
  def new
    @user = User.new
    @event = Event.find(params[:event_id])
  end

  def edit
    @invite = Invite.find(params[:id])
  end

  def update
    @invite = Invite.find(params[:id])
    @invite.update(:attending => params[:invite][:attending])
    redirect_to event_path(@event)
  end
end
