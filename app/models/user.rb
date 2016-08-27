class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :tweets

  validates :username, presence: true, uniqueness: true

  has_many :relationships
  has_many :friends, through: :relationships 
end
