class CreateAddColomnComments < ActiveRecord::Migration[6.0]
  def change
    create_table :add_colomn_comments do |t|
    	add_column :comments, :gossip_id, :integer
      t.timestamps
    end
  end
end
