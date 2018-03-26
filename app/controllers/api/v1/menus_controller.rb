module Api::V1

	class MenusController < ApiController

		def index

			@menus = Menu.all

			render json: @menus
		end

		def show
			render json: @menu
		end

		def create
			@menu = Menu.new(menu_params)

			if @menu.save
				render json: @menu, status: :created
			else
				render json: @menu.errors, status: :unprocessable_entity
			end
		end

		private

			def menu_params
				params.require(:menu).permit(:name)
			end
	end
end
