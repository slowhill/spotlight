class Episode < ActiveRecord::Base
	belongs_to :podcast, dependent: :destroy
	default_scope -> { order('created_at DESC') }
	validates :title, presence: true, length: { maximum: 100 }
	validates :description, presence: true, length: { maximum: 500 }
	validates :min_upvotes, presence: true, length: {minimum: 2}, numericality: { only_integer: true }
	#KEEP WORKING ON THIS. NEEDS TO BE FURTHER VALIDATED!!
end
