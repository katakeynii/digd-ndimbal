class MairiesController < ApplicationController
  before_action :set_mairy, only: %i[ show edit update destroy ]
  before_action :authenticate_utilisateur!
  # GET /mairies or /mairies.json
  def index
    @mairies = Mairie.all
  end

  # GET /mairies/1 or /mairies/1.json
  def show
  end

  # GET /mairies/new
  def new
    @mairy = Mairie.new
  end

  # GET /mairies/1/edit
  def edit
  end

  # POST /mairies or /mairies.json
  def create
    @mairy = Mairie.new(mairy_params)

    respond_to do |format|
      if @mairy.save
        format.html { redirect_to mairy_url(@mairy), notice: "Mairie was successfully created." }
        format.json { render :show, status: :created, location: @mairy }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @mairy.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mairies/1 or /mairies/1.json
  def update
    respond_to do |format|
      if @mairy.update(mairy_params)
        format.html { redirect_to mairy_url(@mairy), notice: "Mairie was successfully updated." }
        format.json { render :show, status: :ok, location: @mairy }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @mairy.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mairies/1 or /mairies/1.json
  def destroy
    @mairy.destroy

    respond_to do |format|
      format.html { redirect_to mairies_url, notice: "Mairie was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mairy
      @mairy = Mairie.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def mairy_params
      params.fetch(:mairy, {})
    end
end
