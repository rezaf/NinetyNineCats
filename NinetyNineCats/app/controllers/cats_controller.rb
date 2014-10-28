class CatsController < ApplicationController
  
  def show
    @cat = Cat.find(params[:id])
    render :show
  end
  
  def index
    @cats = Cat.all
    render :index
  end
  
  def new
    @cat = Cat.new
    render :new
  end 
  
end
