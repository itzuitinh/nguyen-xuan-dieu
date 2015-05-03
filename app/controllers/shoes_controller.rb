class ShoesController < ApplicationController
  before_action :set_shoe, only: [:show, :edit, :update, :destroy]
def notify_friend 
      @shoe = Shoe.find(params[:id]) 
      Notifier.email_friend(@shoe, params[:name],      params[:email]).deliver 

      redirect_to @shoe, :notice => "Successfully sent a       message to your friend" 
  respond_to :html
end

  def index
    @shoes = Shoe.all
    
  end

  def show
    @all_comments = @shoe.comments
    @new_comment = @shoe.comments.build
    #respond_with(@shoe)
  end

  def new
    @shoe = Shoe.new
    respond_with(@shoe)
  end

  def edit
  end

  def create
    @shoe = Shoe.new(shoe_params)
    @shoe.save
    respond_with(@shoe)
  end

  def update
    @shoe.update(shoe_params)
    respond_with(@shoe)
  end

  def destroy
    @shoe.destroy
    respond_with(@shoe)
  end

  private
    def set_shoe
      @shoe = Shoe.find(params[:id])
    end

    def shoe_params
      params.require(:shoe).permit(:name, :description, :cover, :price, :category_id, :company_id)
    end
end
