class My::ProjectsController < ApplicationController
  before_filter :require_login

  def index
    @projects = current_user.projects
  end 

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(my_project_params)

    if @project.save
      redirect_to my_projects_path
      flash[:notice] = "Project created"
    else
      render 'new'
      flash[:error] = "Invalid"
    end
  end

  def show

  end


  def edit
    @project = Project.find(params[:id])
    
    if @project.user != current_user
      flash[:error] = "project doesn't exist"
      redirect_to projects_path
    end
  end

  def update
    @project = Project.find(params[:id])

    if @project.update_attributes(my_project_params)
      redirect_to my_projects_path
      flash[:notice] = "Project Updated"
    else
      render 'edit'
      # redirect_to my_project_path(:id)
      flash[:error] = "doesn't exist"
    end

  end


  private

  def my_project_params
    params.require(:project).permit(:title, :teaser, :description, :goal, :user)
  end
end
