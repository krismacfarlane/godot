class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.datetime :date, null: false
      t.boolean :alcohol_served, defaults: false
      t.references "bands"
      t.references "venues"
      t.timestamps null: false
    end
  end
end
