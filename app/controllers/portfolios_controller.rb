class PortfoliosController < ApplicationController
	def index
	 @portfolio_items = Portfolio.all
	end

	def new
		 @portfolio_items = Portfolio.new
	end

	 # POST /blogs
  # POST /blogs.json
  def create
   @portfolio_items = Portfolio.new(params.require(:portfolio).permit(:title, :body))

    respond_to do |format|
      if @portfolio_items.save
        format.html { redirect_to portfolios_path, notice: 'Portfolio was successfully created.' }
        format.json { render :show, status: :created, location: @portfolio_items }
      else
        format.html { render :new }
        format.json { render json: @portfolio_items.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
  	@portfolio_item = Portfolio.find(params[:id])
  end

  def show
  	@portfolio_item = Portfolio.find(params[:id])
  end

  def update
  	@portfolio_item = Portfolio.find(params[:id])
    respond_to do |format|
      if @portfolio_item.update(params.require(:portfolio).permit(:title, :body))
        format.html { redirect_to portfolios_path, notice: 'Blog was successfully updated.' }
        format.json { render :show, status: :ok, location: @blog }
      else
        format.html { render :edit }
        format.json { render json: @blog.errors, status: :unprocessable_entity }
      end
    end
  end


end
