class RemoveColumnUserApi < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :api
  end
end
