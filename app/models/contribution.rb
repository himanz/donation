class Contribution < ActiveRecord::Base
	validates :name, :amount, :message, presence: true
end
