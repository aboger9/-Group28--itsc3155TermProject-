class RemoveImageFromMovies < ActiveRecord::Migration[5.2]
  def change
    remove_column :movies, :images, :string
  end
end
