class Image < ActiveRecord::Base
  belongs_to :project
  belongs_to :user
  
  mount_uploader :image, ImageUploader

  validates :project, presence: true
  validates :file, presence: true

end
