class AddDefaultValueToReview < ActiveRecord::Migration[5.2]
  def change
    change_column :reviews, :movie_id, :integer, :default => 0
  end
end
