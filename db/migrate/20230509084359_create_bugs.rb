class CreateBugs < ActiveRecord::Migration[7.0]
  def change
    create_table :bugs do |t|
      t.string :title
      t.text :description
      t.integer :status
      t.references :tester, null: false, foreign_key: true
      t.references :developer, null: true, foreign_key: true

      t.timestamps
    end
    add_index :bugs, :created_at
  end
end
