class ApplicationController < ActionController::Base
  layout "application"
  
  def index
    user = current_user

    render html: "Hello #{user&.email}!", layout: true
  end
end
