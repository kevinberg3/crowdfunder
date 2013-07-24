class My::ImagesController < ApplicationController

  # before_filter :require_login
  before_filter :require_project

  def index
    @project = Project.find(params[:project_id])
    @image = @project.images.build
    @images = @project.images

    #
    # @images = @project.images.load
  end

  def new
    @image = @project.images
  end


  def create
    # @image = current_user.projects.find(params[:project_id])
    # @image = @project.images.build(image: params[:image][:image],
      # user: current_user)
    # @project.images.build(image: params[:image][:image],
    #   user_id: current_user)
    # @project = Project.find(image_params)
    # @project.update_attributes(params[:id])
    #
    @project = Project.find(params[:project_id])
    @image =@project.images.build
    # build ===
    # @image = Image.new
    # @image.project_id = @project.id
    @image.image = params[:image][:image]
    @image.user_id = current_user.id
   if @image.save
         # redirect_to [:my, @project, :images], notice: "Image uploaded. Check it out below."
         redirect_to my_project_images_path(@project)
       else
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
    @project = Project.find params[:project_id]
  end

  def nav_state
    @nav = :my_projects
  end

  def image_params
    params.require(:image).permit(:image, :project_id, :remote_image_url, :user_id)
  end

end
