class CheesesController < ApplicationController

  def index
    @cheeses = Cheese.all
  end

  def show
    @cheese = Cheese.find(params[:id])
  end

  def new
    @cheese = Cheese.new
  end

  def create
    @cheese = Cheese.new(cheese_params)
    if @cheese.save
      redirect_to cheeses_path
    else
      render "new"
    end
  end

  def destroy
    Cheese.destroy(params[:id])
    redirect_to cheeses_path
  end

  private

  def cheese_params
    params.require(:cheese).permit(:name, :milk_type, :image_url, :description)
  end

end
