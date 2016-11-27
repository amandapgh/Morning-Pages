class PagesController < ApplicationController

  def index
    @pages = Page.all
  end

  def new
    @page = Page.new
  end

  def create
    @page = Page.new(page_params)
      if @page.save
        redirect_to @page
      else
        render 'new'
      end
  end

  private
  def page_params
    params.require(:page).permit(:title, :content, :mood)
  end

end
