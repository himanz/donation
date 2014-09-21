class Contribution < ActiveRecord::Base
	validates :name, :amount, :message, presence: true
	belongs_to :user

	def self.find_by_display
		where(display: true)
	end
end
