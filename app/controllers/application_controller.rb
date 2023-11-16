class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  
  def index
    user = current_user

    render html: "Hello #{user&.email}!", layout: true
  end
end
