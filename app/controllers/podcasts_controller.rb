class PodcastsController < ApplicationController
	def new
		@podcast = Podcast.new(user_id: params[:user_id])
	end

	def index
		@podcast = Podcast.all
	end
end
