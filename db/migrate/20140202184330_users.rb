class Users < ActiveRecord::Migration
  def change
    enable_extension 'uuid-ossp'
    create_table :users, id: :uuid do |t|
      t.uuid :name_id
      t.uuid :address_id
      t.uuid :subscriber_id
      t.uuid :note_id
      t.uuid :password_id
      t.uuid :created_by
      t.uuid :updated_by
      t.boolean :admin
      t.string :session_token
      t.datetime :created_at
      t.datetime :updated_at
      t.timestamps
    end
    add_index :users,[:name_id, :address_id, :subscriber_id, :note_id, :password_id, :admin]
  end
end
