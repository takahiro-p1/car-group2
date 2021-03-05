class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :name, presence: true
  validates :undergraduate, presence: true

  enum grade: { grade1: 0, grade2: 1, grade3: 2,others: 3 }
end
