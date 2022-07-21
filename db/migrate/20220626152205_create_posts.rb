class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.string :title, :limit => 50, null: false
      t.text :body

      t.timestamps
    end
  end
end
