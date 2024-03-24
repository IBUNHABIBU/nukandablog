class AddUserIdToOurservices < ActiveRecord::Migration[7.0]
  def change
    add_column :ourservices, :user_id, :integer
  end
end
