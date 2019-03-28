class CreateUserExamples < ActiveRecord::Migration[5.2]
  def change
    create_table :user_examples do |t|
      t.string :title
      t.text :description
      t.text :javascript
      t.string :graph_type
      t.text :image
      t.integer :likes

      t.timestamps
    end
  end
end
