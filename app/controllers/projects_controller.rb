class ProjectsController < ApplicationController

  def index
    @projects = Project.all.page(params[:page]).per(8)
  end

  def show
    @project = Project.find(params[:id])
    @image = @project.images.build
    @images = @project.images
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)
  end

  def images
    @project = Project.find(params[:id])
  end

  private

  def project_params
    params.require(:project).permit(:title, :teaser, :user_id, :description, :goal)
  end
end
