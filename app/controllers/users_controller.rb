class UsersController < ApplicationController
  def create
    @user = User.find_or_create_by(:name => params[:user][:name])
    @event = Event.find(params[:user][:event_id])
    @user.invites.build(:user_id => @user.id, :event_id => @event.id).save

    redirect_to event_path(@event)
  end
end
