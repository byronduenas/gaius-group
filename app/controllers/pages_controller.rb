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
  end

end
