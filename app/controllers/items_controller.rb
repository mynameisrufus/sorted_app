class ItemsController < ApplicationController
  def index
    @items = Item.sort(params[:sort]).page(params[:page]).per(15).includes(:user)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @items }
    end
  end
end
