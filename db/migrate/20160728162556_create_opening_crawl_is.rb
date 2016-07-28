class CreateOpeningCrawlIs < ActiveRecord::Migration
  def change
    create_table :opening_crawl_is do |t|

      t.timestamps null: false
    end
  end
end
