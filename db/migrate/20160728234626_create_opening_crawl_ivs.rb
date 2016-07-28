class CreateOpeningCrawlIvs < ActiveRecord::Migration
  def change
    create_table :opening_crawl_ivs do |t|

      t.timestamps null: false
    end
  end
end
