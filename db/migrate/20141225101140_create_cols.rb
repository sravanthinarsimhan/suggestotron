class CreateCols < ActiveRecord::Migration
  def change
    create_table :cols do |t|
      t.string :name
      t.integer :age
      t.string :sub

      t.timestamps
    end
  end
end
