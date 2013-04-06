class ItemsController < ApplicationController
  def index
    @items = Item.all
  end
  
  def show
    @item = Item.find(params[:id])
  end
  
  def new
    @item = Item.new
    @item.project_id = params[:project_id]
  end
  
  def create
   @item = Item.new(params[:item])
   if @item.save
     redirect_to item_url(@item)
   else
     render :new
   end
  end
  
  def edit
    @item = Item.find(params[:id])
    @item.project_id = params[:project_id]
  end
  
  def update
    @item = Item.find(params[:id])
    if @item.update_attributes(params[:item])
      redirect_to :back
    else
      render :edit
    end
  end
  
  def destroy
    Item.find(params[:id]).destroy
    redirect_to items_path
  end
end