class AddUserIdToResponses < ActiveRecord::Migration[6.0]
  def change
    add_column :responses, :user_id, :integer
  end
end
