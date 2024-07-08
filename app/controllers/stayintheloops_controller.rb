class StayintheloopsController < ApplicationController
  before_action :set_stayintheloop, only: %i[ show edit update destroy ]

  # GET /stayintheloops or /stayintheloops.json
  def index
    @stayintheloops = Stayintheloop.all
  end

  # GET /stayintheloops/1 or /stayintheloops/1.json
  def show
  end

  # GET /stayintheloops/new
  def new
    @stayintheloop = Stayintheloop.new
  end

  # GET /stayintheloops/1/edit
  def edit
  end

  # POST /stayintheloops or /stayintheloops.json
  def create
    @stayintheloop = Stayintheloop.new(stayintheloop_params)

    respond_to do |format|
      if @stayintheloop.save
        format.html { redirect_to root_path, notice: "Thank you" }
        format.json { render :show, status: :created, location: @stayintheloop }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @stayintheloop.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /stayintheloops/1 or /stayintheloops/1.json
  def update
    respond_to do |format|
      if @stayintheloop.update(stayintheloop_params)
        format.html { redirect_to stayintheloop_url(@stayintheloop), notice: "Stayintheloop was successfully updated." }
        format.json { render :show, status: :ok, location: @stayintheloop }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @stayintheloop.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stayintheloops/1 or /stayintheloops/1.json
  def destroy
    @stayintheloop.destroy!

    respond_to do |format|
      format.html { redirect_to stayintheloops_url, notice: "Stayintheloop was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stayintheloop
      @stayintheloop = Stayintheloop.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def stayintheloop_params
      params.require(:stayintheloop).permit(:name, :email)
    end
end
