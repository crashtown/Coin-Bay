class AddApItoUser < ActiveRecord::Migration[5.1]
  def change
      add_column :users, :public_api, :string
  end
end
