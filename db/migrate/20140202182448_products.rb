class Products < ActiveRecord::Migration
  def change
    enable_extension 'uuid-ossp'
    create_table :products, id: :uuid do |t|
      t.uuid :name_id
      t.string :title
      t.string :key_word
      t.text :description
      t.uuid :image_id
      t.uuid :product_status_id
      t.uuid :product_info_id
      t.boolean :expired
      t.boolean :area_event
      t.boolean :active
      t.uuid :group_id
      t.uuid :product_type_id
      t.uuid :agent_id
      t.uuid :area_id
      t.uuid :area_event_id
      t.uuid :content_id
      t.uuid :invoice_detail_id
      t.datetime :publish_date
      t.datetime :expiry_date
      t.string :tag
      t.uuid :version_id
      t.datetime :created_at
      t.datetime :update_at
      t.timestamps
    end
    add_index :products,[:id, :name_id, :product_status_id, :product_info_id, :active, :expired, :title, :group_id, :product_type_id, :invoice_detail_id, :content_id, :tag, :version_id], name: "index_products"
  end
end
