class CreateArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
      t.string :name, null: false
      t.text :text, null: false
      t.string  :image, null: true
      t.integer :user_id, null: false, foreign_key: true
      t.timestamps null: true
    end
  end
end
