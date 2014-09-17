class Contribution < ActiveRecord::Base
	validates :name, presence: true
end
