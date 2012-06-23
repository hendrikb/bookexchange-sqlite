class PageController < ApplicationController
  skip_before_filter :authorize
  def show
    if !params[:page].nil?
      page = params[:page]
    else
      page = 'home'
    end

    render page
  end
end
