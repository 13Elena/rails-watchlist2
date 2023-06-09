class ListsController < ApplicationController
  def new
    @list = List.new
  end

  def show
    @list = List.find(params[:id])
  end

  def index
    @lists = List.all
  end

  def create
    list = List.new(list_params)
    if list.save
      redirect_to list_path(list.id)
    else
      render_new notice: "An error has occured"
    end
  end

  private

  def list_params
    params.require(:list).permit(:name)
  end
end
