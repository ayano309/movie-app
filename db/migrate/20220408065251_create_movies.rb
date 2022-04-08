class CreateMovies < ActiveRecord::Migration[6.1]
  def change
    create_table :movies do |t|
      t.date :date
      t.string :title
      t.string :appearance
      t.string :director
      t.text :body
      t.integer :user_id
      t.timestamps
    end
  end
end
