class AddForeignKeyForCats < ActiveRecord::Migration[5.2]
  def change
    add_foreign_key :cats, :users
  end
end
