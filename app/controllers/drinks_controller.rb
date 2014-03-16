class DrinksController < ApplicationController
	before_action :set_drink, only: [:show, :edit, :update, :destroy]
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
		
     	 if @drink.save
     	 	redirect_to drinks_path
     	 end
    end

	def edit
	end

	def update
		 if @drink.update_attributes(drink_params)
     	 	redirect_to drinks_path
     	 end
	end

	def destroy
		if @drink.destroy
			redirect_to drinks_path
		end
	end

	def drink_params
  		params.require(:drink).permit(:name, :size) 
    end
    def set_drink
      @drink = Drink.find(params[:id])
    end
end
