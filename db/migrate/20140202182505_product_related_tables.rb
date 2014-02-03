class ProductRelatedTables < ActiveRecord::Migration
  def change
    enable_extension 'uuid-ossp'
    create_table :product_categories, id: :uuid do |t|
      t.string :name
      t.string :title
      t.string :category_type
      t.uuid :site_id
      t.uuid :product_id
      t.uuid :page_id
      t.uuid :created_at
      t.uuid :updated_at
      t.datetime :created_at
      t.datetime :updated_at
      t.timestamps
    end
    add_index :product_categories, [:id, :name, :title, :category_type, :site_id, :product_id], name: "index_product_categories"

    create_table :invoice_details, id: :uuid do |t|
      t.uuid :product_id
      t.uuid :area_id
      t.date :date
      t.float :amount
      t.float :discount
      t.date :invoice_date
      t.uuid :invoice_number
      t.uuid :service_charge
      t.uuid :service_tax_amount
      t.uuid :service_tax_percentage
      t.uuid :created_by
      t.uuid :updated_by
      t.datetime :created_at
      t.datetime :updated_at
      t.timestamps
    end
    add_index :invoice_details, [:id, :product_id, :area_id, :amount, :discount, :invoice_date, :invoice_number, :invoice_number, :service_charge, :service_tax_amount, :service_tax_percentage], name: "index_invoice_details"

    create_table :product_infos, id: :uuid do |t|
      t.uuid :product_id
      t.uuid :product_type_id
      t.uuid :video
      t.uuid :booking_status_id
      t.uuid :invoice_detail_id
      t.uuid :info_id
      t.datetime :created_at
      t.datetime :updated_at
      t.timestamps
    end
    add_index :product_infos, [:id, :product_id, :product_type_id, :video, :booking_status_id, :invoice_detail_id, :info_id], name: "index_product_infos"

    create_table :product_types, id: :uuid do |t|
      t.string :name
      t.datetime :created_at
      t.datetime :update_at
      t.timestamps
    end

    create_table :booked_products, id: :uuid do |t|
      t.uuid :subscriber_id
      t.uuid :product_id
      t.uuid :area_id
      t.uuid :subscriber_bucket_id
      t.uuid :agent_id
      t.time :time
      t.uuid :quantity
      t.uuid :booking_status_id
      t.uuid :created_by
      t.uuid :updated_by
      t.datetime :created_at
      t.datetime :updated_at
      t.timestamps
    end
    add_index :booked_products, [:id, :product_id, :subscriber_id, :area_id, :subscriber_bucket_id, :agent_id, :time, :booking_status_id], name: "index_booked_products"

    create_table :product_statuses, id: :uuid do |t|
      t.string :name
      t.datetime :created_at
      t.datetime :updated_at
      t.timestamps
    end

    create_table :reviews, id: :uuid do |t|
      t.uuid :rank
      t.uuid :subscriber_id
      t.string :format
      t.boolean :helpful
      t.uuid :helpful_rate
      t.boolean :area
      t.uuid :area_id
      t.boolean :product
      t.uuid :product_id
      t.datetime :created_at
      t.datetime :updated_at
      t.timestamps
    end

    create_table :booked_statuses, id: :uuid do |t|
      t.string :name
      t.datetime :created_at
      t.datetime :updated_at
      t.timestamps
    end

    create_table :packages, id: :uuid do |t|
      t.datetime :created_at
      t.datetime :updated_at
      t.timestamps
    end
  end
end
