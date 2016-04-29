class CreateListingsUsers < ActiveRecord::Migration
  def change
    create_table :listings_users do |t|
      t.references :user, index: true
      t.references :listing, index: true

      t.timestamps
    end
  end
end
