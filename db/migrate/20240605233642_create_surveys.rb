class CreateSurveys < ActiveRecord::Migration[7.1]
  def change
    create_table :surveys do |t|
      t.string :email
      t.string :age
      t.string :location
      t.boolean :invested
      t.string :ifso
      t.string :goals
      t.string :challenge
      t.string :solution
      t.text :solution_desc
      t.string :comfort
      t.string :liquidity
      t.boolean :ready

      t.timestamps
    end
  end
end
