class HomeController < ApplicationController
  def index

  end

  def search
    if params[:q].present?
      @songs = SC_CLIENT.get('/tracks', :q => params[:q], :licence => 'cc-by-sa')
    end
    render :index
  end
end
