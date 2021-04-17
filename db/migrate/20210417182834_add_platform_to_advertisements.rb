class AddPlatformToAdvertisements < ActiveRecord::Migration[6.1]
  def change
    add_reference :advertisements, :platform, null: false, foreign_key: true
  end
end
