class EventsController < ApplicationController
  def index
    @events = Event.all
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.create(params.require(:event).permit(:name))
    redirect_to events_path
  end

  def show
    @event = Event.find(params[:id])
    @users = @event.users
    @invites = Invite.where(:event_id == @event.id)
  end
end
