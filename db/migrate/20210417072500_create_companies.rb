class CreateCompanies < ActiveRecord::Migration[6.1]
  def change
    create_table :companies do |t|
      t.string :user
      t.string :email

      t.timestamps
    end
    add_index :companies, :email, unique: true
  end
end
