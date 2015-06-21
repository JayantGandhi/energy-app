class AddIsCoverStoryToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :is_cover_story, :boolean, default: false
  end
end
