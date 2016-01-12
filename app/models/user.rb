class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
	# validates :surname, {presence: true}
	# validates :name, presence: true
	validates :email, presence: true
	# has_many:pictures
end
