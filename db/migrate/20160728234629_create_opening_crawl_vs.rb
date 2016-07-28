class CreateOpeningCrawlVs < ActiveRecord::Migration
  def change
    create_table :opening_crawl_vs do |t|

      t.timestamps null: false
    end
  end
end
