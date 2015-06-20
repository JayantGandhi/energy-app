class AddVerticalToArticle < ActiveRecord::Migration
  def change
    add_column :articles, :vertical, :text
  end
end
