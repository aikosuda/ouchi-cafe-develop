class CoffeeNotesController < ApplicationController
	def new
		@coffee_note = CoffeeNote.new
	end

	def create
		@coffee_note = current_user.coffee_notes.new(coffee_note_params)
		if @coffee_note.save
      		redirect_to root_path, notice: "コーヒーノートに追加しました。"
    	else
      		render :new
    	end
	end

	def index
	end


	private
		def coffee_note_params
			params.require(:coffee_note).permit(:name, :shop, :image, :rate, :price, :quontity, :producing_area, :condition, :roasting_degree, :acidity, :scent, :sweetness, :bitter_taste, :rich)
		end


end
