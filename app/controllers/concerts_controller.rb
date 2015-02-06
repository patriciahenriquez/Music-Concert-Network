class ConcertsController < ApplicationController

	def new
		@concert=Concert.new
	end 

	def create
		@concert=Concert.new(concert_params)
			#create a concert with all of these parameters 
			if @concert.save
				redirect_to action: 'show', controller: 'concerts', id: @concert.id
			else
			flash[:error] = "Concert not created"
			render 'new'
			end 
	end

	def show
		# @concert = Concert.find(proje)
		render text: 'hello'
	end 



	private 
	def concert_params 
		params.require(:concert).permit(:artist, :venue, :city, :description, :date, :ticket_price)
		#this returns a hash
	end

end
