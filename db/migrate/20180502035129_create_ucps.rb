class CreateUcps < ActiveRecord::Migration[5.1]
  def change
    create_table :ucps do |t|

      t.timestamps
    end
  end
end
