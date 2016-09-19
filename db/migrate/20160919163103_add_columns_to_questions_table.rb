class AddColumnsToQuestionsTable < ActiveRecord::Migration[5.0]
  def change
    add_column :questions, :option_one, :string
    add_column :questions, :option_two, :string
  end
end
