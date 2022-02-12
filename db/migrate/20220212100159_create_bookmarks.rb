class CreateBookmarks < ActiveRecord::Migration[6.1]
  def change
    create_table :bookmarks do |t|
      t.string :comment
      t.references :movie, index: true, foreign_key: true
      t.references :list, index: true, foreign_key: true
      t.timestamps
    end
  end
end
