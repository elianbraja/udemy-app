class PortofoliosController < ApplicationController



  def index
    # Ajo qe po bejme eshte qe po therrasim Modell brenda controllerit per ta bere te aksesueshem tek View
    @portfolio_items = Portofolio.all
  end



  def new
    # ketu thjesht krijojme nj instance te re te Portofolios dhe e bejeme gati per formen
    @portfolio_item = Portofolio.new
  end




  def create
    # futja ne database
    @portfolio_item = Portofolio.new(params.require(:portofolio).permit(:title, :subtitle, :body))

    respond_to do |format|
      if @portfolio_item.save
        format.html { redirect_to portofolios_path, notice: "Your porfolio is now live."}
      else
        format.html { render :new }
      end
    end
  end





  def edit
    @portfolio_item = Portofolio.friendly.find(params[:id])
  end





  def update
    @portfolio_item = Portofolio.friendly.find(params[:id])

    respond_to do |format|
      if @portfolio_item.update(params.require(:portofolio).permit(:title, :subtitle, :body))
        format.html { redirect_to portofolios_path, notice: "The record was successfully updated!"}
      else
        format.html { render :edit }
      end
    end
  end



  def show
    @portfolio_item = Portofolio.friendly.find(params[:id])
  end



end
