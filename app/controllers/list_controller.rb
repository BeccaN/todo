class ListController < ApplicationController
  def index
    @lists = List.search(params[:search])
  end

  def show
    @list = List.find(params[:id])
  end

  def create

  end

  private

    def list_params
      params.require(:list).permit(:search)
    end


end
