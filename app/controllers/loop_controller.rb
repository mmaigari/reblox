class LoopController < ApplicationController
  def new
    @sloop = Sloop.new
  end

  def create
    @sloop = Sloop.new(sloop_params)
    if @sloop.save
      redirect_to root_path, notice: 'Thank you for your feedback!'
    else
      render :new
    end
  end

  def index
    @sloop = Sloop.all
  end

  private

  def feedback_params
    params.require(:sloop).permit(:name, :email)
  end
end
