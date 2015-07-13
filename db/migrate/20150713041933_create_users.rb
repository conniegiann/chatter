class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :username
      t.string :password
      t.string :password_digest
      t.string :location
      t.text :image
      t.text :bio

      t.timestamps null: false
    end
  end
end
