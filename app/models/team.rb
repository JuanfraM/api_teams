class Team < ActiveRecord::Base
  #mount_uploader :avatar, AvatarUploader
  validates :nombre, presence: true
end
