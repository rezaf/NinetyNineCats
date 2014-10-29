class CreateCats < ActiveRecord::Migration
  def change
    create_table :cats do |t|
      t.string :name, null: false
      t.text :description, null: false
      t.string :color, null: false
      t.datetime :birth_date, null: false
      t.string :sex, null: false
      t.timestamps
    end
  end
end
