class AddUrlAndUserIdToComics < ActiveRecord::Migration
  def change
    add_column :comics, :url, :string
    add_column :comics, :user_id, :integer
  end
end
