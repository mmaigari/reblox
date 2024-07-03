class AdminController < ApplicationController
  before_action :authenticate_administrator!
  
  def index
  end

  def dashboard
  end
end
