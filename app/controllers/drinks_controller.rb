class DrinksController < ApplicationController

	def index
		@drink = Drink.all
	end

	def show
	end

	def new
		@drink = Drink.new
	end

	def create
		@drink = Drink.new(drink_params)
		
		respond_to do |f|
     	 if @drink.save
       	 f.html { redirect_to @drink, notice: 'Issue was successfully created.' }
     	 end
     	end
    end


	

	def drink_params
  		params.require(:drink).permit(:name, :size) 

    end

	def edit
	end

	def update
	end

	def destroy
	end
end
