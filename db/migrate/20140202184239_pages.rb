class Pages < ActiveRecord::Migration
  def change
    enable_extension 'uuid-ossp'
    create_table :pages, id: :uuid do |t|
      t.string :name
      t.uuid :parent_id
      t.uuid :status_id
      t.uuid :template_id
      t.uuid :theme_id
      t.uuid :site_id
      t.uuid :page_type_id
      t.uuid :created_by
      t.uuid :updated_by
      t.date :published
      t.datetime :created_at
      t.datetime :updated_at
      t.timestamps
    end
    add_index :pages, [:name, :parent_id, :status_id, :site_id, :page_type_id, :template_id, :theme_id, :published]
  end
end
