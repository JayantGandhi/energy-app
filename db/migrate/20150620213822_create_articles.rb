class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.text :image_url
      t.text :title
      t.text :subtitle

      t.timestamps null: false
    end
  end
end
