class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  petergate(roles: [:user], multiple: false)                                      ##
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :api_keys
end
