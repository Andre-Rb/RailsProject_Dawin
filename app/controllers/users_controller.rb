class UsersController < ApplicationController
	before_filter :authenticate_user!, except: [:index, :show]

	def show
		# @user = User.find(params[:id])
		load_user
		# render view : 'user/show', locals: {user: user}
	end

	def create
		user_params = params[:user]
		user_params= user_params.permit(:name, :surname, :email)
		user = User.new user_params
		if user.valid?
			user.save
		else
			@errors = "Vous ne pouvez pas avoir un formulaire vide"
			render 'new'
			return
		end
		redirect_to users_path
	end

	def update
		user_params = params[:user]
		user_params= user_params.permit(:name, :surname, :email)
		load_user
		valid = @user.update user_params
		if valid
			redirect_to users_path(@user)
		else
		@errors = @user.errors
			render 'edit'
			return
		end
	end

	def destroy
		load_user
		@user.delete
		redirect_to users_path
	end

	def edit
		
		load_user
	end

protected
	def load_user
		@user = User.find(params[:id])
	end
end
