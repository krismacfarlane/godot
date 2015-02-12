class CreateBands < ActiveRecord::Migration
  def change
    create_table :bands do |t|
      t.string :name, null: false
      t.string :genre, null: false
      t.boolean :has_explicit_lyrics, defaults: false
    end
  end
end
