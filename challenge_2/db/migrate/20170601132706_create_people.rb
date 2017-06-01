class CreatePeople < ActiveRecord::Migration[5.1]
  def change
    create_table :people do |t|
      t.string :name
      t.string :company
      t.string :email
      t.string :phone
      t.string :photo

      t.timestamps
    end
  end
end
