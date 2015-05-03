class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :get_all_categories, :authenticate_user!
  private  
  def get_all_categories
    @categories = Category.all
  end
    def get_all_companies
    @companies = Company.active
  end
end
