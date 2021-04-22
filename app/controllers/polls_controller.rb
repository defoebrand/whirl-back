class PollsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    render json: Poll.first
  end

  def update
    @poll = Poll.first
    @poll.influencers += 1 if params[:type] == 'influencer'
    @poll.companies += 1 if params[:type] == 'company'
    @poll.save
  end
end
