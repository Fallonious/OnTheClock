class CreateDevelopers < ActiveRecord::Migration
  def change
    create_table :developers do |t|
      t.integer :id
      t.string :email
      t.string :password_digest

      t.timestamps null: false
    end
  end
end
