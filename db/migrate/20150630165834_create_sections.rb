class CreateSections < ActiveRecord::Migration
  def change
    create_table :sections do |t|
      t.integer :position
      t.boolean :has_image
      t.text :image_url
      t.text :body
      t.text :header

      t.timestamps null: false
    end
  end
end
