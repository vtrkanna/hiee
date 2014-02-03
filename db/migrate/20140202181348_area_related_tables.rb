class AreaRelatedTables < ActiveRecord::Migration
  def change
    enable_extension 'uuid-ossp'
    create_table :area_other_infos, id: :uuid do |t|
      t.time :open_time
      t.time :close_time
      t.string :no_of_products
      t.uuid :no_of_staffs
      t.uuid :note_id
      t.datetime :area_stated_time
      t.datetime :created_at
      t.datetime :updated_at
      t.timestamps
    end
    add_index :area_other_infos,[:id,:open_time, :close_time, :note_id], name: "index_area_other_infos"

    create_table :area_subscribers, id: :uuid do |t|
      t.uuid :area_id
      t.uuid :area_review_id
      t.string :no_subscribers
      t.datetime :created_at
      t.datetime :updated_at
      t.timestamps
    end
    add_index :area_subscribers,[:id, :area_id, :no_subscribers], name: "index_area_subscribers"

    create_table :area_events, id: :uuid do |t|
      t.string :name
      t.uuid :area_id
      t.string :display_name
      t.datetime :publish_date
      t.datetime :expiry_date
      t.boolean :active
      t.boolean :expired
      t.timestamps
    end

  end
end
