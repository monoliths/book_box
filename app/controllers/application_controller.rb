class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  # Cancan throws an Error when a user is editing a resource that they are not
  # permited. Here we catch the error and give them a nice message.
  rescue_from CanCan::AccessDenied do |exception|
    redirect_to books_path, notice: "You are not authorized to access this area"
  end
end
