class ShopsController < ApplicationController

  # GET /shops
  def index
    @shops = Shop.all

    render json: @shops
  end

  # GET /shops/1
  def show
    @shop = Shop.find(params[:id])
    render json: @shop
  end

  # POST /shops
  def create
    @shop = Shop.create(shop_params)
    render json: @shop
  end

  # PATCH/PUT /shops/1
  def update
    @shop = Shop.find(params[:id])
    @shop.update(shop_params)
    render json: @shop
  end

  # DELETE /shops/1
  def destroy
    @business = Business.find(params[:id])
    @business.destroy
    render json: @business

    # Only allow a trusted parameter "white list" through.
    private

    def shop_params
      params.require(:shop) permit(:name, :location, :summary, :number, :website, :image)
    end
end













