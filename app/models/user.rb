class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :contributions

  def self.get_contributions(id)
  	Contribution.where(user_id: id).order("created_at DESC")
  end
end
