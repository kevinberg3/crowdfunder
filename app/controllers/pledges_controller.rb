class PledgesController < ApplicationController

  before_filter :load_project
  before_filter :require_login

  def new
    @pledge = Pledge.new
  end

  def create
    @pledge = Pledge.new(user_id: current_user.id, project_id: params[:project_id], amount: params[:pledge][:amount])

    if @pledge.save
      redirect_to project_path(params[:project_id])
      flash[:notice] = "Thanks for pledging"
    else
      redirect_to project_path(params[:project_id])
      flash[:error] = "can't be blank"


    end
    
    end


  private

  def load_project
    @project = Project.find(params[:project_id])
  end

end
