class Reaction < ApplicationRecord

  belongs_to :user, class_name: "User"
  belongs_to :carlist, class_name: "Carlist"

  enum status: { like: 0, dislike: 1 }
  
end
