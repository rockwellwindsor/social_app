class MapTilesSubscriptionsController < ApplicationController
  before_action :set_map_tiles_subscription, only: [:show, :edit, :update, :destroy]

  # GET /map_tiles_subscriptions
  # GET /map_tiles_subscriptions.json
  def index
    @map_tiles_subscriptions = MapTilesSubscription.all
  end

  # GET /map_tiles_subscriptions/1
  # GET /map_tiles_subscriptions/1.json
  def show
  end

  # GET /map_tiles_subscriptions/new
  def new
    @map_tiles_subscription = MapTilesSubscription.new
  end

  # GET /map_tiles_subscriptions/1/edit
  def edit
  end

  # POST /map_tiles_subscriptions
  # POST /map_tiles_subscriptions.json
  def create
    @map_tiles_subscription = MapTilesSubscription.new(map_tiles_subscription_params)

    respond_to do |format|
      if @map_tiles_subscription.save
        format.html { redirect_to @map_tiles_subscription, notice: 'Map tiles subscription was successfully created.' }
        format.json { render :show, status: :created, location: @map_tiles_subscription }
      else
        format.html { render :new }
        format.json { render json: @map_tiles_subscription.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /map_tiles_subscriptions/1
  # PATCH/PUT /map_tiles_subscriptions/1.json
  def update
    respond_to do |format|
      if @map_tiles_subscription.update(map_tiles_subscription_params)
        format.html { redirect_to @map_tiles_subscription, notice: 'Map tiles subscription was successfully updated.' }
        format.json { render :show, status: :ok, location: @map_tiles_subscription }
      else
        format.html { render :edit }
        format.json { render json: @map_tiles_subscription.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /map_tiles_subscriptions/1
  # DELETE /map_tiles_subscriptions/1.json
  def destroy
    @map_tiles_subscription.destroy
    respond_to do |format|
      format.html { redirect_to map_tiles_subscriptions_url, notice: 'Map tiles subscription was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_map_tiles_subscription
      @map_tiles_subscription = MapTilesSubscription.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def map_tiles_subscription_params
      params.require(:map_tiles_subscription).permit(:tile_id, :map_id, :user_id, :completed, :active, :locked, :status)
    end
end
