class PodcastsController < ApplicationController
	# before_action :signed_in_user only: [:create, :destroy]
	respond_to :html, :json, :xml

	def new
		@user = User.find(params[:user_id])
		@podcast = @user.podcasts.build
		respond_with(@podcast)
	end

	def create
		@user = User.find(params[:user_id])
		@podcast = @user.podcasts.build(podcast_params)
		if @podcast.save
			flash[:success] = "Podcast created"
			redirect_to root_url
		else
			render 'new'
		end
	end

	def index
		@podcast = Podcast.all
	end

	def show
		@podcast = User.find(params[:user_id]).podcasts.find(params[:id])
	end

	def destroy
		@podcast = User.find(params[:user_id]).podcasts.find(params[:id])
		@podcast.destroy
		redirect_back_or root_url
	end

	private
		def podcast_params
			params.require(:podcast).permit(:name, :description)
		end	
end
