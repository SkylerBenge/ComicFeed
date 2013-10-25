class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.string :url
      t.integer :comic_id

      t.timestamps
    end
  end
end
