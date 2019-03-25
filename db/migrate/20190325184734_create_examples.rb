class CreateExamples < ActiveRecord::Migration[5.2]
  def change
    create_table :examples do |t|
      t.string :title
      t.text :description
      t.text :javascript
      t.text :graph_type
      t.integer :likes

      t.timestamps
    end
  end
end
