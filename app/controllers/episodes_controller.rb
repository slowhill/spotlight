class EpisodesController < ApplicationController
	respond_to :html, :json, :xml
	
	def new
		@podcast = User.find(params[:user_id]).podcasts.find(params[:podcast_id])
		@episode = @podcast.episodes.build
		respond_with(@episode)
	end

	def create
	end
end
