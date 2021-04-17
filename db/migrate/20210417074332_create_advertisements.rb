class CreateAdvertisements < ActiveRecord::Migration[6.1]
  def change
    create_table :advertisements do |t|
      t.integer :followers
      t.integer :likes
      t.string :title
      t.text :desc

      t.timestamps
    end
  end
end
