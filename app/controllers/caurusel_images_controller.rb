class CauruselImagesController < ApplicationController
  before_action :set_caurusel_image, only: [:show, :edit, :update, :destroy]
 layout "admin"
  # GET /caurusel_images
  # GET /caurusel_images.json
  def index
    @caurusel_images = CauruselImage.all
  end

  # GET /caurusel_images/1
  # GET /caurusel_images/1.json
  def show
  end

  # GET /caurusel_images/new
  def new
    @caurusel_image = CauruselImage.new
  end

  # GET /caurusel_images/1/edit
  def edit
  end

  # POST /caurusel_images
  # POST /caurusel_images.json
  def create
    @caurusel_image = CauruselImage.new(caurusel_image_params)

    respond_to do |format|
      if @caurusel_image.save
        format.html { redirect_to @caurusel_image, notice: 'Caurusel image was successfully created.' }
        format.json { render :show, status: :created, location: @caurusel_image }
      else
        format.html { render :new }
        format.json { render json: @caurusel_image.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /caurusel_images/1
  # PATCH/PUT /caurusel_images/1.json
  def update
    respond_to do |format|
      if @caurusel_image.update(caurusel_image_params)
        format.html { redirect_to @caurusel_image, notice: 'Caurusel image was successfully updated.' }
        format.json { render :show, status: :ok, location: @caurusel_image }
      else
        format.html { render :edit }
        format.json { render json: @caurusel_image.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /caurusel_images/1
  # DELETE /caurusel_images/1.json
  def destroy
    @caurusel_image.destroy
    respond_to do |format|
      format.html { redirect_to caurusel_images_url, notice: 'Caurusel image was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_caurusel_image
      @caurusel_image = CauruselImage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def caurusel_image_params
      params.require(:caurusel_image).permit(:name, :img)
    end
end
