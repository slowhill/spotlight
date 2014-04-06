class Episode < ActiveRecord::Base
	belongs_to :podcast, dependent: :destroy
	default_scope -> { order('created_at DESC') }
	validates :title, presence: true, length: { maximum: 100 }
	validates :description, presence: true, length: { maximum: 500 }
end
