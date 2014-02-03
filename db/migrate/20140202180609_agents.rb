class Agents < ActiveRecord::Migration
  def change
    enable_extension 'uuid-ossp'
    create_table :agents, id: :uuid  do |t|
      t.uuid :name_id
      t.uuid :address_id
      t.uuid :content_id
      t.uuid :contact_number_id
      t.string :area_ids
      t.uuid :office_id
      t.string :remember_me
      t.string :session_token
      t.datetime :created_at
      t.datetime :updated_at
      t.timestamps
    end
    add_index :agents,[:id, :name_id, :address_id, :content_id, :contact_number_id, :office_id, :area_ids], name: "index_agents"
  end
end
