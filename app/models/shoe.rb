class Shoe < ActiveRecord::Base
acts_as_commentable
mount_uploader :cover, ::ImageUploader
belongs_to :category
belongs_to :company

end
