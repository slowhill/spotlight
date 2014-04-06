class EpisodesController < ApplicationController
	respond_to :html, :json, :xml

	def new
		@podcast = User.find(params[:user_id]).podcasts.find(params[:podcast_id])
		@episode = @podcast.episodes.build
		respond_with(@episode)
	end

	def create
		@podcast = User.find(params[:user_id]).podcasts.find(params[:podcast_id])
		@episode = @podcast.episodes.build(epcreate_params)
		if @episode.save 
			flash.now[:success] = "3, 2, 1.."
			redirect_to 'show'
		else
			render 'new'
		end
	end

	def show
	end

	private
		def epcreate_params
			params.require(:episode).permit(:title, :description, :upvote_type, :min_upvotes)
		end	
end
