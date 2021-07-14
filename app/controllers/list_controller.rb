class ListController < ApplicationController
  def index
    @lists = List.search(params[:search])
  end

  def show
    @list = List.find(params[:id])
  end

  def create
    @list = List.create(title: params[:title])
    redirect_to list_index_path
  end

  private

    def list_params
      params.require(:list).permit(:search, :title)
    end
end
