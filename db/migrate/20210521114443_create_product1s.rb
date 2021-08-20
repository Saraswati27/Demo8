class CreateProduct1s < ActiveRecord::Migration[5.0]
  def change
    create_table :product1s do |t|
      t.string :Name
      t.integer :Price

      t.timestamps
    end
  end
end
