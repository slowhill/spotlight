class Podcast < ActiveRecord::Base
	belongs_to :user
	has_many :episodes
	validates :user_id, presence: true
	validates :name, presence: true, length: { maximum: 100 }
	validates :description, presence: true, length: { maximum: 140 }	
end
