class CreateImagesTable < ActiveRecord::Migration[5.2]
  def change
    create_table :images do |t|
      t.string :headline
      t.integer :position
      t.string :url
      t.integer :like
      t.timestamps
    end
  end
end
