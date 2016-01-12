class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :titre
      t.integer :user_id
      t.string :header
      t.string :image
      t.string :publishDate
      t.text :content

      t.timestamps
    end
  end
end
