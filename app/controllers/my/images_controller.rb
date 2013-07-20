class My::ImagesController < ApplicationController

  def index
    @project = current_user.projects.find(params[:project_id])
    @images = @project.images.all
  end

  def create
    
  end

  
end
