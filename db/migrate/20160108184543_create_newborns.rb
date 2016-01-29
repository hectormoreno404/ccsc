class CreateNewborns < ActiveRecord::Migration
  def change
    create_table :newborns do |t|

      t.string :first_name
      t.string :last_name
      t.string :birthdate
      t.integer :gender
      t.string :photo
      t.timestamps
    end
  end
end
