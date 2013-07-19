class My::Projects::ImagesController < ApplicationController

  def index
    @images = current_user.projects.images.all
  end

  def create
    
  end

  
end
