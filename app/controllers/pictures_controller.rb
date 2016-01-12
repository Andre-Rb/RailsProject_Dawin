class PicturesController < ApplicationController

	def show
		@picture = Picture.find(params[:id])
	end

	def create
		picture_params = params[:picture]
		picture_params= picture_params.permit(:name, :user_id)
		picture = Picture.new picture_params
		if picture.valid?
			picture.save
		else
			@errors = "Vous ne pouvez pas avoir un formulaire vide"
			render 'new'
			return
		end
		redirect_to pictures_path
	end

	def update
		picture_params = params[:picture]
		picture_params= picture_params.permit(:name, :user_id)
		@picture = Picture.find(params[:id])
		valid = @picture.update picture_params
		if valid
			redirect_to pictures_path(@picture)
		else
		@errors = @picture.errors
			render 'edit'
			return
		end
	end

	def destroy
		@picture = Picture.find(params[:id])
		@picture.delete
		redirect_to pictures_path
	end

	def edit
		@picture = Picture.find(params[:id])
	end

end
