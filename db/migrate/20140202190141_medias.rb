class Medias < ActiveRecord::Migration
  def change
    enable_extension 'uuid-ossp'
    create_table :medias, id: :uuid do |t|
      t.uuid :video_info_id
      t.uuid :image_id
      t.uuid :product_id
      t.uuid :area_id
      t.uuid :agent_id
      t.uuid :audio_id
      t.uuid :site_id
      t.uuid :page_id
      t.uuid :created_by
      t.uuid :updated_by
      t.datetime :created_at
      t.datetime :updated_at
      t.timestamps
    end
    add_index :medias,[:id, :video_info_id, :image_id, :product_id, :area_id, :agent_id, :audio_id, :site_id, :page_id]
  end
end
