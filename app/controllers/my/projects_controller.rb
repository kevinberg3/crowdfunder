class My::ProjectsController < ApplicationController
  before_filter :require_login

  def index
    @projects = current_user.projects
  end 

  def new
    @project = current_user.projects.build
  end

  def create
    @project = current_user.projects.build(my_project_params)

    if @project.save
      redirect_to my_projects_path
      flash[:notice] = "Project created"
    else
      render 'new'
      flash[:error] = "Invalid"
    end
  end

  def show
    @project = Project.find(params[:id])
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
      flash[:error] = "doesn't exist"
    end

  end

  def destroy
    @project = Project.find(params[:id])

    if @project.destroy
      redirect_to my_projects_path
      flash[:notice] = "Project Deleted"
    else
      flash[:alert] = "Oops! Something went wrong. Project could not be deleted."
      redirect_to my_projects_path(@project)
    end
  end

  private

  def my_project_params
    params.require(:project).permit(:title, :teaser, :description, :goal, :user_id)
  end
end
