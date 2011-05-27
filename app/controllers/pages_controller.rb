class PagesController < ApplicationController
  
  def home
    if signed_in?
      @micropost = Micropost.new
      @feed_items = current_user.feed.paginate(:page => params[:page])
    end
  end

  def about
	@title = "About"
  end

end
