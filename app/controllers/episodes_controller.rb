class EpisodesController < ApplicationController
	respond_to :html, :json, :xml

	def new
		@podcast = User.find(params[:user_id]).podcasts.find(params[:podcast_id])
		@episode = @podcast.episodes.build
		respond_with(@episode)
	end

	def create
		@podcast = User.find(params[:user_id]).podcasts.find(params[:podcast_id])
		@episode = @podcast.episodes.build
	end

	private
		def podcast_params
			params.require(:episode).permit(:title, :description, :upvote_type)
		end	
end
