class InvitesController < ApplicationController
  def create
    event = Event.find(params[:format])
    @invite = event.invites.build
    @invite.user_id = current_user.id
    if @invite.save
      redirect_to event
    end
  end

  def destroy
    @invite = Invite.find(params[:id])
    if @invite.destroy
      redirect_to events_path
    end
  end

  private
  def invite_params
    params.require(:invite).permit(:event_id, :user_id)
  end
end
