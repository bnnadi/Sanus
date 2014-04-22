class RecipeController < ApplicationController  
  def index
    @choices = ['chicken', 'pork', 'fish', 'beef', 'fruit', 'cheese', 'vegetables', 'shellfish', 'legume', 'pasta', 'lamb', 'duck']
    
    if(params[:food])
      @recipes = Yummly.search(params[:food])
    end
  end
  
  def info
    @recipe = recipe = Yummly.find(params[:id])
  end
  
end
