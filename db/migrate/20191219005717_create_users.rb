class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.integer :role
      t.string :email
      t.string :projectRepo
      t.string :projectURL

      t.timestamps
    end
  end
end
