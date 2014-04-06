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
			flash[:success] = "3, 2, 1.."
			redirect_to user_podcast_episode_path(params[:user_id], params[:podcast_id], @episode.id)
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
