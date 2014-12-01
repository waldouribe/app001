class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :role, default: 'member'
      t.string :password_digest
      t.string :authentication_token

      t.timestamps
    end
  end
end
