class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.string :title, :limit => 50, :null => false
      t.text :boddy

      t.timestamps
    end
  end

  def self.down
   drop_table :posts
  end


end
