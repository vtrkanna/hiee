class AdminSectionTables < ActiveRecord::Migration
  def change
    enable_extension 'uuid-ossp'
    create_table :roles, id: :uuid do |t|
      t.string :name
      t.uuid :status_id
      t.uuid :created_by
      t.uuid :updated_by
      t.uuid :subscriber_id
      t.datetime :created_at
      t.datetime :updated_at
      t.timestamps
    end

    create_table :terms_and_conditions, id: :uuid do |t|
      t.string :name
      t.uuid :site_id
      t.boolean :page
      t.uuid :page_id
      t.uuid :content_id
      t.uuid :created_by
      t.uuid :updated_by
      t.datetime :created_at
      t.datetime :updated_at
      t.timestamps
    end

  end
end
