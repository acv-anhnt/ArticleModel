class CreateTextsTable < ActiveRecord::Migration[5.2]
  def change
    create_table :texts do |t|
      t.string :headline
      t.integer :position
      t.text :paragraph
      t.integer :like, default: 0
      t.timestamps
    end
  end
end
