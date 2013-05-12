class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.integer :isbn
      t.date :published_at
      t.decimal :price, precision: 5, scale: 2

      t.timestamps
    end
  end
end
