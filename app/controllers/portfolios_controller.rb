class PortfoliosController < ApplicationController
  before_action :set_portfolio, only: [:show, :edit, :update, :destroy]
  # GET /portfolios
  # GET /portfolios.json
  def index
    @portfolios = Portfolio.all
  end
  def stock_quote
    @stocks = Stock.all
    if @stocks.count > 0
    @string = ''
    @stocks.each do |element|
      @string = @string + element[:ticker] + ','
    end
  end
    @quote = StockQuote::Stock.quote(@string)
    return @quote
  end
  # GET /portfolios/1
  # GET /portfolios/1.json
  def show 
    @username = User.find(@portfolio.user)
    @quote = stock_quote
    return self
  end

  # GET /portfolios/new
  def new
    @portfolio = Portfolio.new
    @user = session[:user]

  end

  # GET /portfolios/1/edit
  def edit
    @stock = Stock.new
  end
 # def self.stocks
  #  @stocks = Stocks.select_all('ticker')
  #end
  # POST /portfolios
  # POST /portfolios.json
  def create
    @portfolio = Portfolio.new(portfolio_params)
    respond_to do |format|
      if @portfolio.save
        format.html { redirect_to @portfolio, notice: 'Portfolio was successfully created.' }
        format.json { render :show, status: :created, location: @portfolio }
      else
        format.html { render :new }
        format.json { render json: @portfolio.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /portfolios/1
  # PATCH/PUT /portfolios/1.json
  def update
    respond_to do |format|
      if @portfolio.update(portfolio_params)
        format.html { redirect_to @portfolio, notice: 'Portfolio was successfully updated.' }
        format.json { render :show, status: :ok, location: @portfolio }
      else
        format.html { render :edit }
        format.json { render json: @portfolio.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /portfolios/1
  # DELETE /portfolios/1.json
  def destroy
    @portfolio.destroy
    respond_to do |format|
      format.html { redirect_to portfolios_url, notice: 'Portfolio was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
 def portfolio_params
      params.require(:portfolio).permit(:user, :name)
    end
  def add_stock
    @stock = Stock.new
    render 'add_stock'
  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_portfolio
      @portfolio = Portfolio.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
   
end
