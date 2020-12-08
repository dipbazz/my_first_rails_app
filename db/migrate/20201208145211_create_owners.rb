class CreateOwners < ActiveRecord::Migration[6.0]
  def change
    create_table :owners do |t|
      t.string :name
      t.integer :contact
      t.string :email

      t.timestamps
    end
  end
end
