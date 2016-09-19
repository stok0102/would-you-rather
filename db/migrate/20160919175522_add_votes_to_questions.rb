class AddVotesToQuestions < ActiveRecord::Migration[5.0]
  def change
    add_column :questions, :option_one_votes, :integer
    add_column :questions, :option_two_votes, :integer
  end
end
