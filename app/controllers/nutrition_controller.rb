class NutritionController < ApplicationController
  def index
    @searchFor = params[:searched]
    search = FoodInfo.search(@searchFor, :page => 2, :per_page => 20) 
    @results = search.results
  end
  
  def info
    @info = FoodInfo.details(params[:id])
  end
end
