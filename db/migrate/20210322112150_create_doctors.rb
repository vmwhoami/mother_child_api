class CreateDoctors < ActiveRecord::Migration[6.1]
  def change
    create_table :doctors do |t|
      t.string :name
      t.string :title
      t.text :info
      t.integer :room
      t.string :recieving_hours

      t.timestamps
    end
  end
end
