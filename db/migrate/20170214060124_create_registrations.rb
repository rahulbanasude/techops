class CreateRegistrations < ActiveRecord::Migration
  def change
    create_table :registrations do |t|
      t.string :name
      t.string :email
      t.string :number
      t.string :college

      t.timestamps null: false
    end
  end
end
