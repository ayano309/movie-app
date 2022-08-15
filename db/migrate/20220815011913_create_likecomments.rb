class CreateLikecomments < ActiveRecord::Migration[6.1]
  def change
    create_table :likecomments do |t|
      t.references :user, null: false, foreign_key: true
      t.references :movie, null: false, foreign_key: true
      t.references :like, null: false, foreign_key: true
      t.integer :shape,null: false
      t.integer :color,null: false
      t.integer :smell,null: false
      t.timestamps
    end
  end
end
