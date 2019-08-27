class CreateAddColomns < ActiveRecord::Migration[6.0]
  def change
    create_table :add_colomns do |t|
      t.string :user

      t.timestamps
    end
  end
end
