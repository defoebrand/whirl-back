class CreateInfluencers < ActiveRecord::Migration[6.1]
  def change
    create_table :influencers do |t|
      t.string :name
      t.string :email

      t.timestamps
    end
    add_index :influencers, :email, unique: true
  end
end
