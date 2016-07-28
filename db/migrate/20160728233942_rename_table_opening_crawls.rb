class RenameTableOpeningCrawls < ActiveRecord::Migration
  def change
    rename_table :opening_crawl_is, :opening_crawls
  end
end
