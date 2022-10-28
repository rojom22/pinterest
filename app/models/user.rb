class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :pins

  validates_uniqueness_of :username

  has_one_attached :avatar

  def avatar_thumbnail
    avatar.variant(resize_to_limit: [150, 150]).processed
  end
end
