class PageController < ApplicationController
  def show
    if !params[:page].nil?
      page = params[:page]
    else
      page = 'home'
    end

    render page
  end
end
