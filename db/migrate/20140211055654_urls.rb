class Urls < ActiveRecord::Migration
  def change
    enable_extension 'uuid-ossp'
    create_table "urls", id: :uuid, :force => true do |t|
      t.string "name"
      t.string "type"
      t.boolean "active"
      t.integer "site_id"
      t.integer "page_id"
      t.integer "created_by"
      t.integer "updated_by"
      t.datetime "created_at"
      t.datetime "updated_at"
      t.timestamps
    end

    add_index :urls, [:name, :type, :active], name: "index_urls"
  end
end
