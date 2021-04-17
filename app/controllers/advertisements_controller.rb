class AdvertisementsController < ApplicationController
  def index
    render json: Advertisement.all
  end
end
