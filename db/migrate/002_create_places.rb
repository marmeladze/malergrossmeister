class CreatePlaces < ActiveRecord::Migration
  def self.up
    create_table :places do |t|
      t.string :name
      t.string :address
      t.string :photo
      t.string :phone
      t.string :lat
      t.string :lng
      t.timestamps null: false
    end
  end

  def self.down
    drop_table :places
  end
end
