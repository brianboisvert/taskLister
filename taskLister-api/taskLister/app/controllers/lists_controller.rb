class ListsController < ApplicationController
  before_action :set_list, only: [:show]

  def index
    @lists = List.all
    render json: @lists, include: [:tasks]
  end

  def show
    render json: @list
  end

  def create
    @list = List.new(task_params)
    if @list.save
      render json: @list, status: :created, location: @list
    else
      render json: @list.errors, status: :unprocessable_entity
    end
  end

  private

  def set_list
    @list = List.find(params[:id])
  end

  def task_params
    params.require(:list).permit(:title)
  end
end
