class Episode < ActiveRecord::Base
	belongs_to :podcast, dependent: :destroy
end
