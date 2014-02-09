class PicsController < ApplicationController


def index
	@pics = Pic.all
end

def new
@pic = Pic.new
end

def create
	#what do you want to happen after the form is submitted?
	#Pic.create (:hour => 1,
		# :emotion => "Stoked",
		# :learned => "HTML and CSS Rocks!")
Pic.create(pics_params)
redirect_to pics_path
	end

	private
	def pics_params
		params.require(:pic).permit(
			:hour, :emotion, :learned, :image	
			)
	end

end
