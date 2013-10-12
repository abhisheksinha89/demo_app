class CreateHubabas < ActiveRecord::Migration
  def change
    create_table :hubabas do |t|
      t.string :name
      t.string :man

      t.timestamps
    end
  end
end
