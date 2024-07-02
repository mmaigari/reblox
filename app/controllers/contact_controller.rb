class ContactController < ApplicationController
  def new
    @contactu = Contactu.new
  end

  def create
    @contactu = Contactu.new(contactu_params)
    if @contactu.save
      redirect_to root_path, notice: 'Thank you for your message!'
    else
      render :new
    end
  end

  def index
    @contactu = Contactu.all
  end

  private

  def contactu_params
    params.require(:contactu).permit(:name, :email, :message)
  end
end
