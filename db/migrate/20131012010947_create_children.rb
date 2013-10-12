class CreateChildren < ActiveRecord::Migration
  def change
    create_table :children do |t|
      t.string :name
      t.string :school
      t.string :address
      t.string :gender

      t.timestamps
    end
  end
end
