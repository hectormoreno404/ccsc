class NewbornsController < ApplicationController

	def index
		@newborns = Newborn.all
	end

	def show
		@newborn = Newborn.find(params[:id])		
	end

	def new
		@newborn = Newborn.new
	end

	def create
		@newborn = Newborn.new(newborn_params)
		if @newborn.save
		redirect_to @newborn
		else
		render :new
		end
	end

	def destroy
		@newborn = Newborn.find(params[:id])
		@newborn.destroy
		redirect_to newborns_path
	end
	def edit
		@newborn = Newborn.find(params[:id])		
	end
	def update
		@newborn = Newborn.find(params[:id])
		if @newborn.update(newborn_params)
			redirect_to @newborn
		else
			render :edit
		end
		
		
	end

	private

	def newborn_params
		params.require(:newborn).permit(:first_name,:last_name,:birthdate,:gender,:photo)
	end
end
