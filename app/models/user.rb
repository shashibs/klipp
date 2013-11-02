class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :notes

  validates :name, presence: true, length: { minimum: 2 }, length: { maximum: 35 }
  
  has_attached_file :avatar, :styles => { :thumb => ["100x100#", :png] }
end
