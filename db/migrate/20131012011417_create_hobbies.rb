class CreateHobbies < ActiveRecord::Migration
  def change
    create_table :hobbies do |t|
      t.string :name
      t.string :hobby

      t.timestamps
    end
  end
end
