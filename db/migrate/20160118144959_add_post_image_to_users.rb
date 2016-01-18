class AddPostImageToUsers < ActiveRecord::Migration
  def change
    add_column :users, :postImage, :string
  end
end
