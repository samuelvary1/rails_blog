class ImageUploadersController < ApplicationController
  before_action :set_image_uploader, only: [:show, :edit, :update, :destroy]

  # GET /image_uploaders
  # GET /image_uploaders.json
  def index
    @image_uploaders = ImageUploader.all
  end

  # GET /image_uploaders/1
  # GET /image_uploaders/1.json
  def show
  end

  # GET /image_uploaders/new
  def new
    @image_uploader = ImageUploader.new
  end

  # GET /image_uploaders/1/edit
  def edit
  end

  # POST /image_uploaders
  # POST /image_uploaders.json
  def create
    @image_uploader = ImageUploader.new(image_uploader_params)

    respond_to do |format|
      if @image_uploader.save
        format.html { redirect_to @image_uploader, notice: 'Image was successfully created.' }
        format.json { render :show, status: :created, location: @image_uploader }
      else
        format.html { render :new }
        format.json { render json: @image_uploader.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /image_uploaders/1
  # PATCH/PUT /image_uploaders/1.json
  def update
    respond_to do |format|
      if @image_uploader.update(image_uploader_params)
        format.html { redirect_to @image_uploader, notice: 'Image was successfully updated.' }
        format.json { render :show, status: :ok, location: @image_uploader }
      else
        format.html { render :edit }
        format.json { render json: @image_uploader.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /image_uploaders/1
  # DELETE /image_uploaders/1.json
  def destroy
    @image_uploader.destroy
    respond_to do |format|
      format.html { redirect_to image_uploaders_url, notice: 'Image was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_image_uploader
      @image_uploader = ImageUploader.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def image_uploader_params
      params.require(:image_uploader).permit(:title, :description, :image)
    end
end
