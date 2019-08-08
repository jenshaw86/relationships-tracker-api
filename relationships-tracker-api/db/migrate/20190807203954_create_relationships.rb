class CreateRelationships < ActiveRecord::Migration[5.2]
  def change
    create_table :relationships do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone_number
      t.string :image
      t.string :birthday
      t.string :relationship_type
      t.string :relationship_length
      t.string :relationship_description
      t.integer :user_id

      t.timestamps
    end
  end
end
