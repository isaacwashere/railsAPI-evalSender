class AddCorrespUserToQuestions < ActiveRecord::Migration[6.0]
  def change
    add_column :questions, :corresp_userid, :integer
  end
end
