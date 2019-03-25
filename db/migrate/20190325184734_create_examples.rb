class CreateExamples < ActiveRecord::Migration[5.2]
  def change
    create_table :examples do |t|
      t.string :title
      t.text :description
      t.text :javascript
      t.integer :likes
      t.integer :graph_type_id

      t.timestamps
    end
  end
end
