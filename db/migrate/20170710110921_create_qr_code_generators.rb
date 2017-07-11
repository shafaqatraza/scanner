class CreateQrCodeGenerators < ActiveRecord::Migration[5.1]
  def change
    create_table :qr_code_generators do |t|
      t.text :text

      t.timestamps
    end
  end
end
