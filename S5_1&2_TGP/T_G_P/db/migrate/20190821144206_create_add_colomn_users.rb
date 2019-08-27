class CreateAddColomnUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :add_colomn_users do |t|
    	add_column :users, :password_digest, :string
      t.timestamps
    end
  end
end
