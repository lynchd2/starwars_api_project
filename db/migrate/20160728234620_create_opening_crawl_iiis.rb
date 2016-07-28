class CreateOpeningCrawlIiis < ActiveRecord::Migration
  def change
    create_table :opening_crawl_iiis do |t|

      t.timestamps null: false
    end
  end
end
