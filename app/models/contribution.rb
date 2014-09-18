class Contribution < ActiveRecord::Base
	validates :name, :amount, :message, presence: true
	belongs_to :user
end
