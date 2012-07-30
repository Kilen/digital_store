class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :get_all_catogories, :get_administrator_authority
  

  def get_all_catogories
    @catogories = Catogory.all
  end
  def get_administrator_authority
    @is_admin = true
  end
  def redirect_back
    redirect_to(:back)
  rescue ActionController::RedirectBackError
    redirect_to(catogories_path)
  end
end
