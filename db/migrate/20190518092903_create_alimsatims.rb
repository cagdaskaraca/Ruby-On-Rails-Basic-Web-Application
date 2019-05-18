class CreateAlimsatims < ActiveRecord::Migration[5.2]
  def change
    create_table :alimsatims do |t|
      t.string :urunadi
      t.text :bilgiler
      t.integer :fiyat

      t.timestamps
    end
  end
end
