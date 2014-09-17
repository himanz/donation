class Contribution < ActiveRecord::Base
	validates :name, :amount, presence: true
end
