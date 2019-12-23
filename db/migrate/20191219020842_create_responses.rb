class CreateResponses < ActiveRecord::Migration[6.0]
  def change
    create_table :responses do |t|
      t.string :body
      t.integer :scale

      t.timestamps
    end
  end
end
