class ChangeApItoUser < ActiveRecord::Migration[5.1]
  def change
      rename_column :users, :public_api, :api
  end
end
