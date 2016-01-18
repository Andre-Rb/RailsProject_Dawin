class AddPostImageToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :postImage, :string
  end
end
