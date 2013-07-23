class My::ImagesController < ApplicationController

  before_filter :require_login
  before_filter :require_project

  def index
    @images = @project.images.order(:id)
    @image = @project.images.build

    # @project = current_user.projects.find(params[:project_id])
    # @images = @project.images.load
  end

 

  def create
    @image = @project.images.build(image_params)
    # @project.images.build(image_params)
   if @image.save
         redirect_to [:my, @project, :images], notice: "Image uploaded. Check it out below."
       else
         @images = @project.images.order(:id)
         render :index
  
    end



    # @image = Image.new(image_params)
    # if @image.save
    #   redirect_to my_project_images_path(params[:project_id])
    #   flash[:notice] = "Image successfully uploaded"
    # else
    #   redirect_to my_project_images_path(params[:project_id])
    #   flash[:error] = "Image failed to upload"
    # end
  end

  protected

  def require_project
    @project = current_user.projects.find params[:project_id]
  end

  def nav_state
    @nav = :my_projects
  end

  def image_params
    params.require(:image).permit(:image, :project_id)
  end
  
end
