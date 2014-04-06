module EpisodesHelper
	def ishosting?(user)
		@user = User.find_by(params[:user_id])
		current_user?(@user)
	end
end
