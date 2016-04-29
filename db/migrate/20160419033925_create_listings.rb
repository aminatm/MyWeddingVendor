class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.string :name
      t.string :description
      t.string :category
      t.references :user, index: true, foreign_key: true

      t.timestamps
    end
  end
end
