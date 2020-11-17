class Api::ProductsController < ApplicationController

  def index
    search = params[:search]
    if search
      @products = Product.where("name ILIKE '%#{search}%'")
    else
      @products = Product.all
    end

    @products = @products.order(name: :desc)

      
    render "index.json.jb"
  end

  def create
    @product = Product.new(
      name: params[:name],
      price: params[:price],
      image_url: params[:image_url],
      description: params[:description],
    )
    if @product.save    
      render "create.json.jb"
    else
      render json: {errors: @product.errors.full_messages}
    end
  end

  def show
    @product = Product.find_by(id: params[:id])
    render "show.json.jb"
  end

  def update
    @product = Product.find_by(id: params[:id])
    @product.name = params[:name] || @product.name
    @product.price = params[:price] || @product.price
    @product.image_url = params[:image_url] || @product.image_url
    @product.description = params[:description] || @product.description
    @product.save
    render "show.json.jb"
  end

  def destroy
    @product = Product.find_by(id: params[:id])
    @product.destroy
    render json: { message: "Product destroyed successfully!" }
  end

end
