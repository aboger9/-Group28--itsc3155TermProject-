class ChangeDefaultParamsForReview < ActiveRecord::Migration[5.2]
  def change
    change_column :reviews, :user_id, :integer, :default => 1
  end
end
