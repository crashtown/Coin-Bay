class CreateBtcprices < ActiveRecord::Migration[5.1]
  def change
    create_table :btcprices do |t|
      t.string :price

      t.timestamps
    end
  end
end
