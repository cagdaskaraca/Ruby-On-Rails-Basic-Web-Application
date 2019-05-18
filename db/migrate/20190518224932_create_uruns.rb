class CreateUruns < ActiveRecord::Migration[5.2]
  def change
    create_table :uruns do |t|
      t.string :satici

      t.timestamps
    end
  end
end
