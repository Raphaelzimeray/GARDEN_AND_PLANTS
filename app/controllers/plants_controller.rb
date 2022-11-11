class PlantsController < ApplicationController

  def create
    @plant = Plant.new(p)
  end
end
