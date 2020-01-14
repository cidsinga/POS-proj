class PurchasesController < ApplicationController

  def index
    @purchases = Purchase.all
    render :index
  end

  def new
    @purchase = Purchase.new
    render :new
  end

  def create
    @purchase = Purchase.new(purchase_params)
    if @purchase.save
      redirect_to purchases_path
    else
      render :new
    end
  end

  def edit
    @purchase = Purchase.find(params[:id])
    render :edit
  end

  def show
    @purchase = Purchase.find(params[:id])
    render :show
  end

  def update
    @purchase= Purchase.find(params[:id])
    if @purchase.update(purchase_params)
      redirect_to purchases_path
    else
      render :edit
    end
  end

  def destroy
    @purchase = Purchase.find(params[:id])
    @purchase.destroy
    redirect_to purchases_path
  end

  private
    def purchase_params
      params.require(:purchase).permit(:date)
    end

end
