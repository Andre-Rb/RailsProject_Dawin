class Post < ActiveRecord::Base
    mount_uploader :postImage, PostImageUploader
end
