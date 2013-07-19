class Image < ActiveRecord::Base
  belongs to :project
  mount_uploader :image, ImageUploader

  validates :project, presence: true
  validates :file, presence: true

end
