class AddDescriptionToRanking < ActiveRecord::Migration[5.2]
  def change
    add_column :rankings, :description, :text
    add_column :rankings, :product_url, :text
  end
end
