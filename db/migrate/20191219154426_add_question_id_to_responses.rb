class AddQuestionIdToResponses < ActiveRecord::Migration[6.0]
  def change
    add_column :responses, :question_id, :integer
  end
end
