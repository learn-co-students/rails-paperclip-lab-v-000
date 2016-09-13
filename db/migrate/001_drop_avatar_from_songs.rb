class DropAvatarFromSongs < ActiveRecord::Migration
  def change
    remove_column :songs,:avatar
  end
end
