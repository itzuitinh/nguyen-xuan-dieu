class CategoriesController < ApplicationController
  before_action :set_category, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @all_shoes = Shoe.all
  end

  def show
    @category_shoes = @category.shoe
  end

  def new
    @category = Category.new
    respond_with(@category)
  end

  def edit
  end

  def create
    @category = Category.new(category_params)
    @category.save
    respond_with(@category)
  end

  def update
    @category.update(category_params)
    respond_with(@category)
  end

  def destroy
    @category.destroy
    respond_with(@category)
  end

  private
    def set_category
      @category = Category.find(params[:id])
    end

    def category_params
      params.require(:category).permit(:name, :active)
    end
end
