class CreateOpeningCrawlVis < ActiveRecord::Migration
  def change
    create_table :opening_crawl_vis do |t|

      t.timestamps null: false
    end
  end
end
