class SocialLinksController < ApplicationController
  before_action :set_social_link, only: [:show, :edit, :update, :destroy]

  # GET /social_links
  # GET /social_links.json
  def index
    @social_links = SocialLink.all
  end

  # GET /social_links/1
  # GET /social_links/1.json
  def show
  end

  # GET /social_links/new
  def new
    @social_link = SocialLink.new
  end

  # GET /social_links/1/edit
  def edit
  end

  # POST /social_links
  # POST /social_links.json
  def create
    @social_link = SocialLink.new(social_link_params)

    respond_to do |format|
      if @social_link.save
        format.html { redirect_to @social_link, notice: 'Social link was successfully created.' }
        format.json { render :show, status: :created, location: @social_link }
      else
        format.html { render :new }
        format.json { render json: @social_link.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /social_links/1
  # PATCH/PUT /social_links/1.json
  def update
    respond_to do |format|
      if @social_link.update(social_link_params)
        format.html { redirect_to @social_link, notice: 'Social link was successfully updated.' }
        format.json { render :show, status: :ok, location: @social_link }
      else
        format.html { render :edit }
        format.json { render json: @social_link.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /social_links/1
  # DELETE /social_links/1.json
  def destroy
    @social_link.destroy
    respond_to do |format|
      format.html { redirect_to social_links_url, notice: 'Social link was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_social_link
      @social_link = SocialLink.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def social_link_params
      params.require(:social_link).permit(:user_id, :title, :url)
    end
end
