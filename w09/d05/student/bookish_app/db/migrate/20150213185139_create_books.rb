class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title, null: false
      t.date :released_on, null: false
      t.string :genre, null: false
      t.references "author"
      t.timestamps
    end
  end
end
