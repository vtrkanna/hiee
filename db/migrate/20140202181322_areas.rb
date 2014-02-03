class Areas < ActiveRecord::Migration
  def change
    enable_extension 'uuid-ossp'
    create_table :areas, id: :uuid do |t|
      t.uuid :name_id
      t.uuid :password_id
      t.uuid :email_id
      t.uuid :contact_number_id
      t.uuid :contact_info_id
      t.string :fax
      t.string :website
      t.text :description
      t.uuid :content_id
      t.string :overview
      t.uuid :agent_id
      t.uuid :main_office_id
      t.uuid :office_id
      t.uuid :area_review_id
      t.uuid :area_event_id
      t.uuid :area_other_info_id
      t.uuid :social_hub_id
      t.string :remember_me
      t.string :session_token
      t.datetime :created_at
      t.datetime :updated_at
      t.timestamps
    end
    add_index :areas,[:id, :name_id, :password_id, :email_id, :main_office_id, :office_id,:content_id], name: "index_areas"
  end
end
