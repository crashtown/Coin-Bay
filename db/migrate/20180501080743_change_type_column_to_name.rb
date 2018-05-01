class ChangeTypeColumnToName < ActiveRecord::Migration[5.1]
  def change
    rename_column :categories, :type, :name
    rename_column :shippings, :type, :name
  end
end
