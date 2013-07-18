class PledgesController < ApplicationController

  def new
    @pledge = Pledge.new
  end

  def create
    @pledge = Pledge.new(pledge_params)

    if @pledge.save
      # flash[:notice] = 
      redirect_to root_path

    else
      flash[:error] = "can't be blank"
    end
  end


  private
  def pledge_params
    params.require(:pledge).permit(:amount, :user_id, :project_id)

end
