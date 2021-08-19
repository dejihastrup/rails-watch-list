class ListsController < ApplicationController
  def index
    @lists = List.all
  end

  def show
    @list = List.find_by_id(params[:id])
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    if @list.save
      @list.save
      redirect_to list_path(@list)
    else
      @list = List.new
      render action: 'new'
    end
  end

  private

  def list_params
    params.require(:list).permit(:name)
  end
end
