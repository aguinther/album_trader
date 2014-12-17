class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :mailing_address
      t.boolean :admin
      t.string :password_digest


      t.timestamps
    end
  end
end
