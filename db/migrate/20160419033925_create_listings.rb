class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.integer :creator_id
      t.string :name
      t.string :description
      t.string :category
     

      t.timestamps
    end
  end
end
