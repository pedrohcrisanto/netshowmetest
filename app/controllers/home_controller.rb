class HomeController < ApplicationController
    
    before_action :authenticate_user!
    def index
        @videos = Video.order(:id).page params[:page]
    end
end
