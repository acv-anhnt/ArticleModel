class CreateArticlesTable < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
      t.string :title
      t.integer :like, default: 0
      t.datetime :post_at
      t.timestamps
    end
  end
end
