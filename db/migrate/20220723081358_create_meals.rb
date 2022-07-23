class CreateMeals < ActiveRecord::Migration[6.1]
  def change
    create_table :meals do |t|
      t.boolean :breakfast, null: false, default: false
      t.boolean :lunch, null: false, default: false
      t.boolean :dinner, null: false, default: false
      t.references :user, null: false
      t.references :movie, null: false
      t.timestamps
    end
  end
end
