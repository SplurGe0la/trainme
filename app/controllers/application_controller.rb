class ApplicationController < ActionController::Base
  def index
    user = current_user

    render html: "Hello #{user&.email}!", layout: "application"
  end
end
