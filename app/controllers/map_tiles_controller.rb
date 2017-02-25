class MapTilesController < ApplicationController
  before_action :set_map_tile, only: [:show, :edit, :update, :destroy]

  # GET /map_tiles
  # GET /map_tiles.json
  def index
    @map_tiles = MapTile.all
  end

  # GET /map_tiles/1
  # GET /map_tiles/1.json
  def show
  end

  # GET /map_tiles/new
  def new
    @map_tile = MapTile.new
  end

  # GET /map_tiles/1/edit
  def edit
  end

  # POST /map_tiles
  # POST /map_tiles.json
  def create
    @map_tile = MapTile.new(map_tile_params)

    respond_to do |format|
      if @map_tile.save
        format.html { redirect_to @map_tile, notice: 'Map tile was successfully created.' }
        format.json { render :show, status: :created, location: @map_tile }
      else
        format.html { render :new }
        format.json { render json: @map_tile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /map_tiles/1
  # PATCH/PUT /map_tiles/1.json
  def update
    respond_to do |format|
      if @map_tile.update(map_tile_params)
        format.html { redirect_to @map_tile, notice: 'Map tile was successfully updated.' }
        format.json { render :show, status: :ok, location: @map_tile }
      else
        format.html { render :edit }
        format.json { render json: @map_tile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /map_tiles/1
  # DELETE /map_tiles/1.json
  def destroy
    @map_tile.destroy
    respond_to do |format|
      format.html { redirect_to map_tiles_url, notice: 'Map tile was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_map_tile
      @map_tile = MapTile.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def map_tile_params
      params.require(:map_tile).permit(:title, :description, :icon, :active, :map_id, :parent_tile_id, :shared, :locked, :color, :map_category_id, :user_id)
    end
end
