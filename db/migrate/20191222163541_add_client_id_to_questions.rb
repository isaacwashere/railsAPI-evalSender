class AddClientIdToQuestions < ActiveRecord::Migration[6.0]
  def change
    add_column :questions, :client_id, :integer
  end
end
