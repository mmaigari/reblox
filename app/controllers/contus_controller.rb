class ContusController < ApplicationController
  before_action :set_contu, only: %i[ show edit update destroy ]

  # GET /contus or /contus.json
  def index
    @contus = Contu.all
  end

  # GET /contus/1 or /contus/1.json
  def show
  end

  # GET /contus/new
  def new
    @contu = Contu.new
  end

  # GET /contus/1/edit
  def edit
  end

  # POST /contus or /contus.json
  def create
    @contu = Contu.new(contu_params)

    respond_to do |format|
      if @contu.save
        format.html { redirect_to root_path(anchor: 'contu_form'), notice: "Thank you" }
        format.json { render :show, status: :created, location: @contu }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @contu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /contus/1 or /contus/1.json
  def update
    respond_to do |format|
      if @contu.update(contu_params)
        format.html { redirect_to contu_url(@contu), notice: "Contu was successfully updated." }
        format.json { render :show, status: :ok, location: @contu }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @contu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contus/1 or /contus/1.json
  def destroy
    @contu.destroy!

    respond_to do |format|
      format.html { redirect_to contus_url, notice: "Contu was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contu
      @contu = Contu.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def contu_params
      params.require(:contu).permit(:name, :email, :subject, :message)
    end
end
