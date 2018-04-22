class HomeController < ApplicationController
  
    @listings = Listing.all
    def show
    end
    
    def index
        @listings = Listing.all
        @hash = Gmaps4rails.build_markers(@listings) do |listing, marker|
            marker.lat listing.latitude
            marker.lng listing.longitude
            marker.infowindow listing.text
        end
    end
end
