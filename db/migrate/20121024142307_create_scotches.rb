class CreateScotches < ActiveRecord::Migration
  def change
    create_table :scotches do |t|
      t.string :name
      t.string :area
      t.text :taste
      t.text :address
      t.string :picture

      t.timestamps
    end
  end
end
