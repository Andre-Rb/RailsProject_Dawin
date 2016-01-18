class ChangeTypeOfImageFromPost < ActiveRecord::Migration
  def change
    change_column(:posts, :image, :text)
  end
end
