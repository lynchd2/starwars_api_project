class CreateOpeningCrawlViis < ActiveRecord::Migration
  def change
    create_table :opening_crawl_viis do |t|

      t.timestamps null: false
    end
  end
end
