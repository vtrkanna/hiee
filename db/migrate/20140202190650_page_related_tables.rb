class PageRelatedTables < ActiveRecord::Migration
  def change
    enable_extension 'uuid-ossp'
    create_table :effects, id: :uuid do |t|
      t.uuid :created_by
      t.uuid :updated_by
      t.datetime :created_at
      t.datetime :updated_at
      t.timestamps
    end

    create_table :themes, id: :uuid do |t|
      t.string :name
      t.uuid :template_id
      t.uuid :created_by
      t.uuid :updated_by
      t.datetime :created_at
      t.datetime :updated_at
      t.timestamps
    end

    create_table :templates, id: :uuid do |t|
      t.string :name
      t.uuid :site_id
      t.uuid :theme_id
      t.uuid :status_id
      t.uuid :created_by
      t.uuid :updated_by
      t.datetime :created_at
      t.timestamps
    end

    create_table :page_types, id: :uuid do |t|
      t.string :name
      t.uuid :created_by
      t.uuid :updated_by
      t.datetime :created_at
      t.datetime :updated_at
      t.timestamps
    end

    create_table :layouts, id: :uuid do |t|
      t.string :name
      t.string :path
      t.datetime :created_at
      t.datetime :updated_at
      t.timestamps
    end

    create_table :menus, id: :uuid do |t|
      t.string :name
      t.string :title
      t.uuid :status_id
      t.uuid :url_id
      t.uuid :parent_id
      t.uuid :position
      t.uuid :page_id
      t.uuid :site_id
      t.uuid :page_type_id
      t.boolean :active
      t.uuid :created_by
      t.uuid :updated_by
      t.datetime :created_at
      t.datetime :updated_at
      t.timestamps
    end

    create_table :breadcrumbs, id: :uuid do |t|
      t.string :name
      t.string :title
      t.uuid :page_id
      t.uuid :url_id
      t.datetime :created_at
      t.datetime :updated_at
      t.timestamps
    end

    create_table :banners, id: :uuid do |t|
      t.string :name
      t.uuid :image_id
      t.uuid :page_id
      t.uuid :site_id
      t.uuid :created_by
      t.uuid :updated_by
      t.datetime :created_at
      t.datetime :updated_at
      t.timestamps
    end

    create_table :product_in_pages, id: :uuid do |t|
      t.uuid :sequence_order
      t.uuid :page_id
      t.datetime :created_at
      t.datetime :updated_at
      t.timestamps
    end

    create_table :blocks, id: :uuid do |t|
      t.uuid :sequence_order
      t.uuid :page_id
      t.datetime :created_at
      t.datetime :updated_at
      t.timestamps
    end
  end
end
