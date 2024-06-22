class LoopsController < ApplicationController
  def new
    @loop = Loop.new
  end

  def create
    @loop = Loop.new(loop_params)
    if @loop.save
      redirect_to root_path, notice: 'Loop was successfully created.' 
    else
      render :new
    end
  end

  private

  def loop_params
    params.require(:loop).permit(:name, :email)
  end
end
