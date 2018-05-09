class AddApiToUsers < ActiveRecord::Migration[5.1]
  def change
    add_reference :users, :api, foreign_key: true
  end
end
