class Carlist < ApplicationRecord

  has_many :reactions, dependent: :destroy
  has_many :chat_messages, dependent: :destroy
  
  mount_uploader :profile_image, ProfileImageUploader
end
