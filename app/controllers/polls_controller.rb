class PollsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    render json: Poll.first
  end

  def update
    @poll = Poll.first
    @poll.influencers += 1 if poll_params[:type] == 'influencer'
    @poll.companies += 1 if poll_params[:type] == 'company'
    @poll.save
  end

  private

  def poll_params
    params.require(:poll).permit(:type)
  end
end
