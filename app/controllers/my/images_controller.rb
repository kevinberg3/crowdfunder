class My::ImagesController < ApplicationController

  before_filter :require_project

  def index
    @images = @project.images
    @image = @project.images.build
  end

  def new
    @image = @project.images
  end


  def create
    @image =@project.images.build
    # build ===
    # @image = Image.new
    # @image.project_id = @project.id
    @image.image = params[:image][:image]
    @image.user_id = current_user.id
   if @image.save
        redirect_to my_project_images_path(@project), notice: "Image uploaded. Check it out below."
       else
         render :index
    end
  end


  def destroy
    @project.images.find(params[:id]).destroy
    redirect_to my_project_images_path(@project), notice: "Image deleted."
  end
  protected

  def require_project
    @project = Project.find params[:project_id]
  end
end
