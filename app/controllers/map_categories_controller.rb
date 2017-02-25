class MapCategoriesController < ApplicationController
  before_action :set_map_category, only: [:show, :edit, :update, :destroy]

  # GET /map_categories
  # GET /map_categories.json
  def index
    @map_categories = MapCategory.all
  end

  # GET /map_categories/1
  # GET /map_categories/1.json
  def show
  end

  # GET /map_categories/new
  def new
    @map_category = MapCategory.new
  end

  # GET /map_categories/1/edit
  def edit
  end

  # POST /map_categories
  # POST /map_categories.json
  def create
    @map_category = MapCategory.new(map_category_params)

    respond_to do |format|
      if @map_category.save
        format.html { redirect_to @map_category, notice: 'Map category was successfully created.' }
        format.json { render :show, status: :created, location: @map_category }
      else
        format.html { render :new }
        format.json { render json: @map_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /map_categories/1
  # PATCH/PUT /map_categories/1.json
  def update
    respond_to do |format|
      if @map_category.update(map_category_params)
        format.html { redirect_to @map_category, notice: 'Map category was successfully updated.' }
        format.json { render :show, status: :ok, location: @map_category }
      else
        format.html { render :edit }
        format.json { render json: @map_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /map_categories/1
  # DELETE /map_categories/1.json
  def destroy
    @map_category.destroy
    respond_to do |format|
      format.html { redirect_to map_categories_url, notice: 'Map category was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_map_category
      @map_category = MapCategory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def map_category_params
      params.require(:map_category).permit(:title, :color, :icon, :active)
    end
end
