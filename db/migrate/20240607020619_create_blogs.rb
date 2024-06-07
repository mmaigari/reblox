class CreateBlogs < ActiveRecord::Migration[7.1]
  def change
    create_table :blogs do |t|
      t.string :title
      t.string :minute
      t.string :desc
      t.string :image
      t.string :content

      t.timestamps
    end
  end
end
