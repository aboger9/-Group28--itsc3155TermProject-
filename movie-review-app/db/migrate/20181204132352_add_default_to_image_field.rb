class AddDefaultToImageField < ActiveRecord::Migration[5.2]
  def change
    change_column :movies, :image, :string, :default => "https://images-na.ssl-images-amazon.com/images/I/71eWXnUxG3L._SL1500_.jpg"
  end
end
