class FixPostsBody < ActiveRecord::Migration[7.0]
  def change
    rename_column :posts, :boddy, :body
  end
end