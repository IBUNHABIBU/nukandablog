class AddUserIdToHeroImages < ActiveRecord::Migration[7.0]
  def change
    add_column :hero_images, :user_id, :integer
  end
end
