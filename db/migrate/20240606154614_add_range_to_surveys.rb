class AddRangeToSurveys < ActiveRecord::Migration[7.1]
  def change
    add_column :surveys, :range, :string
  end
end
