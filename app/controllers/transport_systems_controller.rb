class TransportSystemsController < ApplicationController
  before_action :set_transport_system, only: %i[ show edit update destroy ]

  # GET /transport_systems or /transport_systems.json
  def index
    @transport_systems = TransportSystem.all
  end

  # GET /transport_systems/1 or /transport_systems/1.json
  def show
  end

  # GET /transport_systems/new
  def new
    @transport_system = TransportSystem.new
  end

  # GET /transport_systems/1/edit
  def edit
  end

  # POST /transport_systems or /transport_systems.json
  def create
    @transport_system = TransportSystem.new(transport_system_params)

    respond_to do |format|
      if @transport_system.save
        format.html { redirect_to @transport_system, notice: "Transport system was successfully created." }
        format.json { render :show, status: :created, location: @transport_system }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @transport_system.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /transport_systems/1 or /transport_systems/1.json
  def update
    respond_to do |format|
      if @transport_system.update(transport_system_params)
        format.html { redirect_to @transport_system, notice: "Transport system was successfully updated." }
        format.json { render :show, status: :ok, location: @transport_system }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @transport_system.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /transport_systems/1 or /transport_systems/1.json
  def destroy
    @transport_system.destroy
    respond_to do |format|
      format.html { redirect_to transport_systems_url, notice: "Transport system was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_transport_system
      @transport_system = TransportSystem.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def transport_system_params
      params.require(:transport_system).permit(:name, :model)
    end
end
