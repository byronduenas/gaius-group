class PagesController < ApplicationController
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def home
    @welcome_images = Dir.glob("app/assets/images/welcome/*.png")
    @projects = Dir.glob("app/assets/images/projects/*")
    @project_folders = {}
    @projects.each do |project|
      key = project.split('/').last
      @project_folders[key] = Dir.glob("#{project}/*")
    end
    @banner_images = Dir.glob("app/assets/images/banner/*.jpg")
    @quotes = ["“Form ever follows function”", "“True visionaries who absorb and interpret culture and design rather than just echo the latest
trends”", "“Laughter is timeless. Imagination has no age. And dreams are forever”", "“A great building must begin with the immeasurable, must go through measurable means when
it is being designed, and in the end must be unmeasured”"]
    @speakers = ["- Louis Henry Sullivan", "- Barry Sternlicht", "- Walt Disney", "- Louis Kahn"]
    @message = Message.new
  end

  def create
    @message = Message.new(params[:message])

    if @message.valid?
      NotificationsMailer.new_message(@message).deliver
      redirect_to(root_path, :notice => "Message was successfully sent.")
    else
      flash.now.alert = "Please fill all fields."
      render :home
    end
  end

end
