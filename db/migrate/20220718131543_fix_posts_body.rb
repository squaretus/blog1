class FixPostsBody < ActiveRecord::Migration[7.0]
  def change
    rename_column :posts, :body, :body
  end
end
