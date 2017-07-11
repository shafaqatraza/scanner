class CreateBarCodes < ActiveRecord::Migration[5.1]
  def change
    create_table :bar_codes do |t|
      t.text :text

      t.timestamps
    end
  end
end
