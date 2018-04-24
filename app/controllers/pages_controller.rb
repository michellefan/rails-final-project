class PagesController < ApplicationController
  def favorites
    @user = current_user
  end

  def my_listings
    @user = current_user
  end
end
