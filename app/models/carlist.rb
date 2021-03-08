class Carlist < ApplicationRecord

  has_many :reactions
  has_many :chat_messages
  
  mount_uploader :profile_image, ProfileImageUploader
end
