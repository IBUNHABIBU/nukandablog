class OurservicesController < ApplicationController
  before_action :set_ourservice, only: %i[ show edit update destroy ]

  # GET /ourservices or /ourservices.json
  def index
    @ourservices = Ourservice.all
  end

  # GET /ourservices/1 or /ourservices/1.json
  def show
  end

  # GET /ourservices/new
  def new
    @ourservice = Ourservice.new
  end

  # GET /ourservices/1/edit
  def edit
  end

  # POST /ourservices or /ourservices.json
  def create
    @ourservice = Ourservice.new(ourservice_params)
    @ourservice.user = current_user

    respond_to do |format|
      if @ourservice.save
        format.html { redirect_to kashg_path, notice: "Ourservice was successfully created." }
        format.json { render :show, status: :created, location: @ourservice }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @ourservice.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ourservices/1 or /ourservices/1.json
  def update
    respond_to do |format|
      if @ourservice.update(ourservice_params)
        format.html { redirect_to kashg_path, notice: "This section was successfully updated." }
        format.json { render :show, status: :ok, location: @ourservice }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @ourservice.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ourservices/1 or /ourservices/1.json
  def destroy
    @ourservice.destroy

    respond_to do |format|
      format.html { redirect_to ourservices_url, notice: "This item was successfully deleted." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ourservice
      @ourservice = Ourservice.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def ourservice_params
      params.require(:ourservice).permit(:Title, :description, :image)
    end
end
