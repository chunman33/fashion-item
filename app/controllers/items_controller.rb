class ItemsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]
  def index
    @items = Item.all
    @user = current_user
  end

  def show
    @item = Item.find(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def create
    @item = Item.new(item_params)
    @item.user_id = current_user.id
    if @item.save
      redirect_to items_path
    else
      @items = Item.all
      render :index
    end
  end

  def new
    @item = Item.new
  end
  
  def item_params
    params.require(:item).permit(:genre_id, :image, :name, :description)
  end

  
end
