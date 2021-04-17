class InfluencersController < ApplicationController
  def index
    render json: Influencer.all
  end
end
