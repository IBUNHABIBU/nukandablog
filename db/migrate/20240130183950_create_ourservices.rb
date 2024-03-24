class CreateOurservices < ActiveRecord::Migration[7.0]
  def change
    create_table :ourservices do |t|
      t.string :Title
      t.text :description

      t.timestamps
    end
  end
end
