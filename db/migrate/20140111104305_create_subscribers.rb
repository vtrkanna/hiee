class CreateSubscribers < ActiveRecord::Migration
  def change
    create_table :subscribers do |t|
      t.string :first_name
      t.string :last_name
      t.string :email_id
      t.string :alternate_mail_id
      t.date :date_of_birth
      t.integer :password_id
      t.string :address_1
      t.string :address_2
      t.integer :city_id
      t.integer :state_id
      t.integer :country_id
      t.string :post_code
      t.string :mobile_no
      t.string :subscriber_type_id
      t.integer :free_subscriber_id
      t.integer :user_name_id
      t.datetime :created_at
      t.datetime :updated_at
      t.timestamps
    end
  end
end
