class ItemsController < ApplicationController

  def index
    @products = Item.includes(:images).order('created_at DESC')
  end

  def new
    @item = Item.new
    @images = @item.images.build
  end

  def create
    @item = Item.new(item_params)
    @item.save
  end

  private

    def item_params
      params.require(:item).permit(
        :name,
        [images_attributes: [:src]])
    end
end