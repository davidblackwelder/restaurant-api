module Api::V1

	class ItemsController < ApiController

		def index
			@items = Item.all
			render json: @items
		end

		

	end
end
