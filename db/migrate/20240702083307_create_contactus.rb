class CreateContactus < ActiveRecord::Migration[7.1]
  def change
    create_table :contactus do |t|
      t.string :name
      t.string :email
      t.string :subject
      t.text :message

      t.timestamps
    end
  end
end
