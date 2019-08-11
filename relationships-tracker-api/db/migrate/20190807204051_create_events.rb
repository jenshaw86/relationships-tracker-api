class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :name
      t.datetime :start_date
      t.datetime :end_date
      t.string :location
      t.string :description
      t.integer :user_id

      t.timestamps
    end
  end
end
