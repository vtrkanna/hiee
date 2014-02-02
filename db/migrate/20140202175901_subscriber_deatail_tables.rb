class SubscriberDeatailTables < ActiveRecord::Migration
  def change
    enable_extension 'uuid-ossp'
    create_table :free_subscribers, id: :uuid do |t|
      t.uuid :subscriber_id
      t.datetime :created_at
      t.datetime :updated_at
      t.timestamps
    end
    add_index :free_subscribers, [:id, :subscriber_id]

    create_table :premium_subscribers, id: :uuid do |t|
      t.uuid :subscriber_id
      t.datetime :created_at
      t.datetime :updated_at
      t.timestamps
    end
    add_index :premium_subscribers, [:id, :subscriber_id]

    create_table :subscriber_types, id: :uuid do |t|
      t.string :name
      t.datetime :created_at
      t.datetime :updated_at
      t.timestamps
    end

    create_table :subscriber_budgets, id: :uuid do |t|
      t.uuid :subscriber_id
      t.uuid :min_budget
      t.uuid :max_budget
      t.uuid :version_id
      t.uuid :created_by
      t.uuid :updated_by
      t.uuid :subscriber_into_product_id
      t.datetime :created_at
      t.datetime :updated_at
      t.timestamps
    end
    add_index :subscriber_budgets, [:id, :subscriber_id, :min_budget, :max_budget, :subscriber_into_product_id]

    create_table :subscriber_into_products, id: :uuid do |t|
      t.uuid :subscriber_id
      t.uuid :subscriber_bucket_id
      t.timestamps
    end
    add_index :subscriber_into_products, [:id, :subscriber_id, :subscriber_bucket_id]

    create_table :subscriber_viewed_products, id: :uuid do |t|
      t.uuid :subscriber_id
      t.uuid :product_id
      t.datetime :created_at
      t.datetime :updated_at
      t.timestamps
    end
    add_index :subscriber_viewed_products, [:id, :subscriber_id, :product_id]

    create_table :subscriber_buckets, id: :uuid do |t|
      t.string :name
      t.uuid :subscriber_id
      t.uuid :created_by
      t.uuid :updated_by
      t.datetime :created_at
      t.datetime :updated_at
      t.timestamps
    end
    add_index :subscriber_buckets, [:id,:name,:subscriber_id]

    create_table :booking_statuses, id: :uuid do |t|
      t.string :name
      t.datetime :created_by
      t.datetime :updated_by
      t.datetime :created_at
      t.datetime :updated_at
      t.timestamps
    end
  end
end
