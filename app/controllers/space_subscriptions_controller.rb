class SpaceSubscriptionsController < ApplicationController
  before_action :set_space_subscription, only: [:show, :edit, :update, :destroy]

  # GET /space_subscriptions
  # GET /space_subscriptions.json
  def index
    @space_subscriptions = SpaceSubscription.all
  end

  # GET /space_subscriptions/1
  # GET /space_subscriptions/1.json
  def show
  end

  # GET /space_subscriptions/new
  def new
    @space_subscription = SpaceSubscription.new
  end

  # GET /space_subscriptions/1/edit
  def edit
  end

  # POST /space_subscriptions
  # POST /space_subscriptions.json
  def create
    @space_subscription = SpaceSubscription.new(space_subscription_params)

    respond_to do |format|
      if @space_subscription.save
        format.html { redirect_to @space_subscription, notice: 'Space subscription was successfully created.' }
        format.json { render :show, status: :created, location: @space_subscription }
      else
        format.html { render :new }
        format.json { render json: @space_subscription.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /space_subscriptions/1
  # PATCH/PUT /space_subscriptions/1.json
  def update
    respond_to do |format|
      if @space_subscription.update(space_subscription_params)
        format.html { redirect_to @space_subscription, notice: 'Space subscription was successfully updated.' }
        format.json { render :show, status: :ok, location: @space_subscription }
      else
        format.html { render :edit }
        format.json { render json: @space_subscription.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /space_subscriptions/1
  # DELETE /space_subscriptions/1.json
  def destroy
    @space_subscription.destroy
    respond_to do |format|
      format.html { redirect_to space_subscriptions_url, notice: 'Space subscription was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_space_subscription
      @space_subscription = SpaceSubscription.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def space_subscription_params
      params.require(:space_subscription).permit(:user_id, :spaces_id, :status)
    end
end
