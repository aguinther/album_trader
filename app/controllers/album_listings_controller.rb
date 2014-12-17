class AlbumListingsController < ApplicationController
  before_action :set_album_listing, only: [:show, :edit, :update, :destroy]

  # GET /album_listings
  # GET /album_listings.json
  def index
    @album_listings = AlbumListing.all
  end

  def my_listings
    @album_listings = AlbumListing.where(seller_id: current_user.id)
  end

  # GET /album_listings/1
  # GET /album_listings/1.json
  def show
  end

  # GET /album_listings/new
  def new
    @album_listing = AlbumListing.new
  end

  # GET /album_listings/1/edit
  def edit
  end

  # POST /album_listings
  # POST /album_listings.json
  def create
    @album_listing = AlbumListing.new(album_listing_params)

    respond_to do |format|
      if @album_listing.save
        format.html { redirect_to @album_listing, notice: 'Album listing was successfully created.' }
        format.json { render :show, status: :created, location: @album_listing }
      else
        format.html { render :new }
        format.json { render json: @album_listing.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /album_listings/1
  # PATCH/PUT /album_listings/1.json
  def update
    respond_to do |format|
      if @album_listing.update(album_listing_params)
        format.html { redirect_to @album_listing, notice: 'Album listing was successfully updated.' }
        format.json { render :show, status: :ok, location: @album_listing }
      else
        format.html { render :edit }
        format.json { render json: @album_listing.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /album_listings/1
  # DELETE /album_listings/1.json
  def destroy
    @album_listing.destroy
    respond_to do |format|
      format.html { redirect_to album_listings_url, notice: 'Album listing was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_album_listing
      @album_listing = AlbumListing.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def album_listing_params
      params.require(:album_listing).permit(:price, :quantity, :condition, :picture)
    end

end
