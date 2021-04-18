class AddLogoToPlatform < ActiveRecord::Migration[6.1]
  def change
    add_column :platforms, :logo, :string
  end
end
