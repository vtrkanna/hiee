class MediaRelatedTables < ActiveRecord::Migration
  def change
    enable_extension 'uuid-ossp'
    create_table :video_infos, id: :uuid do |t|
      t.string :name
      t.string :title
      t.string :display_name
      t.text :description
      t.string :video_path
      t.string :video_format
      t.string :author
      t.string :force_code
      t.string :file_size
      t.string :file_name
      t.uuid :width
      t.uuid :height
      t.string :resolution
      t.uuid :sequence_number
      t.boolean :licence
      t.string :licence_type
      t.string :licence_key
      t.boolean :avatar
      t.uuid :avatar_id
      t.uuid :image_id
      t.uuid :status_id
      t.uuid :version_id
      t.string :caption
      t.datetime :created_by
      t.datetime :updated_by
      t.datetime :created_at
      t.datetime :updated_at
      t.timestamps
    end

    create_table :images, id: :uuid do |t|
      t.string :name
      t.string :title
      t.text :description
      t.string :author
      t.string :atl_tag
      t.boolean :licence
      t.string :licence_type
      t.string :licence_key
      t.boolean :avatar
      t.uuid :avatar_id
      t.string :image_type
      t.uuid :sequence_number
      t.uuid :width
      t.uuid :height
      t.string :resolution
      t.string :file_size
      t.uuid :gallery_id
      t.string :image_path
      t.string :image_source
      t.uuid :status_id
      t.uuid :version_id
      t.string :caption
      t.uuid :created_by
      t.uuid :updated_by
      t.datetime :created_at
      t.datetime :updated_at
      t.timestamps
    end

    create_table :avatars, id: :uuid do |t|
      t.string :name
      t.string :type
      t.uuid :image_id
      t.datetime :created_at
      t.datetime :updated_at
      t.timestamps
    end

    create_table :audios, id: :uuid do |t|
      t.string :name
      t.string :title
      t.string :author
      t.boolean :licence
      t.string :licence_type
      t.string :licence_key
      t.text :description
      t.string :audio_path
      t.string :audio_type
      t.uuid :status_id
      t.uuid :image_id
      t.uuid :file_size
      t.string :file_name
      t.string :caption
      t.boolean :avatar
      t.uuid :avatar_id
      t.uuid :version_id
      t.datetime :created_at
      t.datetime :updated_at
      t.timestamps
    end
  end
end
