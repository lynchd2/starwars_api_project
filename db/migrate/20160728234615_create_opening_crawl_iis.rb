class CreateOpeningCrawlIis < ActiveRecord::Migration
  def change
    create_table :opening_crawl_iis do |t|

      t.timestamps null: false
    end
  end
end
