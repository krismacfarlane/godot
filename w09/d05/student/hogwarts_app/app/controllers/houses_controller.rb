class HousesController < ApplicationController

  def index
    @houses = House.all
  end

  def show
    @house = House.find_by(id: params[:id])
    @students = Student.find_by(houses_id: params[:id])
  end

end
