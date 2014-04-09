class LinksController < ApplicationController

before_action :require_authentication, only: [:new, :edit, :update, :destroy] 

	def index
		@links = Link.all
	end

	def show
    	@link = Link.find(params[:id])
  	end

	def new
		@link = Link.new
	end

	def create
		@link = Link.new(link_params)
		@link.user_id = current_user.id
		@link.save
		redirect_to links_path
	end

	def edit
		@link = Link.find(params[:id])
	end

	def update
		@link = Link.find(params[:id])
		@link.update
		redirect_to link_path(@link)
	end

	def destroy
		@link = Link.find(params[:id])
		@link.destroy
		redirect_to links_path
	end

	private
	def link_params
	    params.require(:link).permit(:url, :title, :description, :net_rating)
	end
end