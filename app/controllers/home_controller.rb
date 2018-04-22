class HomeController < ApplicationController
  
    @listings = Listing.all
    def show
    end
    
    def index
        @listings = Listing.all
    end
end
