module EpisodesHelper
	def ishosting?(user)
		@user = User.find(params[:user_id])
		current_user?(@user)
	end
end
