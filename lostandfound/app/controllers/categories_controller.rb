class CategoriesController < ApplicationController
 
  def index
    @categories = Category.all
  end

  # GET /categories/1
  # GET /categories/1.json
  def show
    @category = Category.find(params[:id])
  end

  # GET /categories/new
  def new
    @category = Category.new
  end

 
  def create
    parameters = params.require(:category).permit(:title, :description)
    @category = Category.new(parameters)

    respond_to do |format|
      if @category.save
        format.html { redirect_to @category, notice: 'Category was successfully created.' }
        format.json { render action: 'show', status: :created, location: @category }
      else
        render action: 'new'
      end
    end
  end

 