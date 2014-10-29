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
  
  def edit
    @cat = Cat.find(params[:id])
    render :edit
  end
  
  def create
    @cat = Cat.new(cat_params)
    
    if @cat.save
      redirect_to cat_url(@cat)
    else
      flash.now[:errors] = @cat.errors.full_messages
      render :new
    end 
  end
  
  def update
    @cat = Cat.find(params[:id])
    # @cat.update!(cat_params)
    # redirect_to cat_url(@cat)
    if @cat.update_attributes(cat_params)
      redirect_to cat_url(@cat)
    else
      flash.now[:errors] = @cat.errors.full_messages
      render :edit
    end
    # else
   #    render @cat.errors.full_messages, status: :unprocessible_entity
   #  end
  end
  
  def cat_params
    params.require(:cat).permit(:name, :sex, :birth_date, :color, :description)
  end
  
end
