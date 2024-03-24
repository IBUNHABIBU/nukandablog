class HeroImagesController < ApplicationController
  before_action :set_hero_image, only: %i[ show edit update destroy ]

  # GET /hero_images or /hero_images.json
  def index
    @hero_images = HeroImage.all
  end

  # GET /hero_images/1 or /hero_images/1.json
  def show
  end

  # GET /hero_images/new
  def new
    @hero_image = HeroImage.new
  end

  # GET /hero_images/1/edit
  def edit
  end

  # POST /hero_images or /hero_images.json
  def create
    @hero_image = HeroImage.new(hero_image_params)
    @hero_image.user = current_user

    respond_to do |format|
      if @hero_image.save
        format.html { redirect_to kashg_path, notice: "Hero image was successfully created." }
        format.json { render :show, status: :created, location: @hero_image }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @hero_image.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hero_images/1 or /hero_images/1.json
  def update
    respond_to do |format|
      if @hero_image.update(hero_image_params)
        format.html { redirect_to hero_image_url(@hero_image), notice: "Hero image was successfully updated." }
        format.json { render :show, status: :ok, location: @hero_image }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @hero_image.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hero_images/1 or /hero_images/1.json
  def destroy
    @hero_image.destroy

    respond_to do |format|
      format.html { redirect_to hero_images_url, notice: "Hero image was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hero_image
      @hero_image = HeroImage.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def hero_image_params
      params.fetch(:hero_image).permit(images: [], user_id: [])
    end
end
