class AddUserIdToNewborns < ActiveRecord::Migration
  def change
    add_reference :newborns, :user, index: true, foreign_key: true
  end
end
