class Api::V1::QuotesController < ApplicationController
   
    before_action :set_category
    
    def index
        @quotes = @category.quotes
        render json: @quotes
    end

    def show
        # @quote = @category.quotes.find_by(id: params[:id])
        @quote = Quote.find(params[:id])
        render json: @quote
    end

    def create
       @quote = @category.quotes.new(quote_params)
       @quote.save 
       render json: @quote
    end 

    def destroy
         
    end 

    def edit

    end 

    private

    def set_category
        @category = Category.find(params[:category_id])
    end 


    def quote_params
        params.require(:quote).permit(:category_id, :author, :content, :description)
        
    end 
end
