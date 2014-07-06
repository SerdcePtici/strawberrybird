class RenamePoemsToPosts < ActiveRecord::Migration
  def change
    rename_table :poems, :posts
    add_column :posts, :type, :string, default: 'Poem'
  end
end
