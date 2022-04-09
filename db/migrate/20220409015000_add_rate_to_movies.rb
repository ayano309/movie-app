class AddRateToMovies < ActiveRecord::Migration[6.1]
  def change
    add_column :movies, :rate, :float
  end
end
