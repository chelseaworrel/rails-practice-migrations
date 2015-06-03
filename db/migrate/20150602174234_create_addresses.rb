class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :current_address
      t.string :permanant_address
      t.references :student, index: true
    end
    add_foreign_key :addresses, :students
  end
end
