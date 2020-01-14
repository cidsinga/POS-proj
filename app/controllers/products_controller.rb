class ProductsController < ApplicationController
  def new
    @purchase = Purchase.find(params[:purchase_id])
    @product = @purchase.products.new
    render :new
  end

  def create
    @purchase = Purchase.find(params[:purchase_id])
    @product = @purchase.products.new(product_params)
    if @product.save
      redirect_to purchase_path(@purchase)
    else
      render :new
    end
  end

  def show
    @purchase = Purchase.find(params[:purchase_id])
    @product = Product.find(params[:id])
    render :show
  end

  def edit
    @purchase = Purchase.find(params[:purchase_id])
    @product = Product.find(params[:id])
    render :edit
  end

  def update
    @product = Product.find(params[:id])
    if @product.update(product_params)
      redirect_to purchase_path(@product.purchase)
    else
      render :edit
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to purchase_path(@product.purchase)
  end

  private
    def product_params
      params.require(:product).permit(:cost, :name, :purchase_id, :availability)
    end

end
