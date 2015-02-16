class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name, null: false
      t.string :img_url, null: false
      t.references "house"

      t.timestamps
    end

  end
end
