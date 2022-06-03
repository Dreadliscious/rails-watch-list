class CreateBookmarks < ActiveRecord::Migration[6.1]
  def change
    create_table :bookmarks do |t|
      t.text :comment
      t.references :movie, null: false
      t.references :list, null: false
      t.timestamps
    end
  end
end
