require 'open-uri'

class CatsController < ApplicationController
  before_action :authorize, only: [:new, :edit]

  def index
    @cats = Cat.all
    render :index
  end

  def new
    @cat = Cat.new
    render :new
  end

  def create
    @user = User.find(session[:user_id])
    @cat = @user.cats.new(cat_params)
   
    if @cat.save
      cat_img = CatImage.new(@cat.breed)
      CatImage.get_breeds_array
      @url = cat_img.get_image_url
      url = URI.parse(@url)
      filename = File.basename(url.path)
      file = URI.open(url)
      @cat.kitty_photo.attach(io: file, filename: filename)
      redirect_to cats_path
    else
      render :new
    end
  end

  def edit
    @cat = Cat.find(params[:id])
    render :edit
  end

  def show
    @cat = Cat.find(params[:id])
   
    render :show
  end

  def update
    @cat = Cat.find(params[:id])
    if @cat.update(cat_params)
      cat_img = CatImage.new(@cat.breed)
      CatImage.get_breeds_array
      @url = cat_img.get_image_url
      url = URI.parse(@url)
      filename = File.basename(url.path)
      file = URI.open(url)
      @cat.kitty_photo.attach(io: file, filename: filename)
      redirect_to cats_path
    else
      render :edit
    end
  end

  def destroy
    @cat = Cat.find(params[:id])
    @cat.destroy
    redirect_to cats_path
  end

  private
    def cat_params
      params.require(:cat).permit(:name, :breed)
    end
end