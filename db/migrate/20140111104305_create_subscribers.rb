class CreateSubscribers < ActiveRecord::Migration
  def change
    enable_extension 'uuid-ossp'
    create_table :subscribers, id: :uuid do |t|
      t.uuid :email_id
      t.date :date_of_birth
      t.uuid :name_id
      t.uuid :password_id
      t.uuid :address_id
      t.uuid :contact_info_id
      t.string :subscriber_type_id
      t.uuid :free_subscriber_id
      t.uuid :status_id
      t.uuid :subscriber_into_product_id
      t.string :remember_me
      t.string :session_token
      t.boolean :role
      t.uuid :role_id
      t.datetime :created_at
      t.datetime :updated_at
      t.timestamps
    end
    add_index :subscribers,[:id,:name_id,:password_id,:address_id,:status_id,:role_id], name: "index_subscribers"
  end
end
