class AllTables < ActiveRecord::Migration
  def change
    enable_extension 'uuid-ossp'
    create_table :names, id: :uuid do |t|
      t.string :first_name
      t.string :last_name
      t.string :full_name
      t.string :alternate_name
      t.string :nick_name
      t.string :user_name
      t.string :display_name
      t.uuid :last_used
      t.boolean :subscriber
      t.boolean :other
      t.uuid :status_id
      t.string :type
      t.uuid :subscriber_id
      t.boolean :active
      t.datetime :created_at
      t.datetime :updated_at
      t.timestamps
    end
    add_index :names,[:id,:full_name, :user_name, :status_id], name: "index_names"

    create_table :emails, id: :uuid do |t|
      t.string :primary_mail
      t.string :alternate_mail
      t.string :delivery_mail
      t.string :work_mail
      t.uuid :version_id
      t.boolean :subscriber
      t.uuid :subscriber_id
      t.boolean :agent
      t.uuid :agent_id
      t.boolean :area
      t.boolean :area_id
      t.boolean :active
      t.uuid :created_by
      t.uuid :updated_by
      t.datetime :created_at
      t.datetime :updated_at
      t.timestamps
    end
    add_index :emails,[:id], name: "index_emails"

    create_table :contact_numbers, id: :uuid do |t|
      t.string :telephone
      t.string :primary_mb_no
      t.string :alternate_mb_no
      t.string :home_no
      t.boolean :home
      t.string :work_telephone
      t.string :work_mb_no
      t.string :office_no
      t.string :other
      t.boolean :active
      t.boolean :work
      t.datetime :created_at
      t.datetime :update_at
      t.timestamps
    end
    add_index :contact_numbers,[:id], name: "index_contact_numers"

    create_table :passwords, id: :uuid do |t|
      t.string :new
      t.boolean :old
      t.uuid :old_id
      t.uuid :subscriber_id
      t.boolean :active
      t.uuid :created_by
      t.uuid :updated_by
      t.datetime :created_at
      t.datetime :updated_at
      t.timestamps
    end
    add_index :passwords, [:id, :new], name: "index_passwords"

    create_table :countries, id: :uuid do |t|
      t.string :name
      t.uuid :region_id
      t.datetime :created_at
      t.datetime :updated_at
      t.timestamps
    end
    add_index :countries,[:id,:name, :region_id], name: "index_countries"

    create_table :cities, id: :uuid do |t|
      t.string :name
      t.uuid :country_id
      t.uuid :region_id
      t.datetime :created_at
      t.datetime :updated_at
      t.timestamps
    end
    add_index :cities,[:id, :name, :country_id, :region_id], name: "index_cities"

    create_table :regions, id: :uuid do |t|
      t.string :name
      t.datetime :created_at
      t.datetime :updated_at
      t.timestamps
    end
    add_index :regions,[:id,:name], name: "index_regions"

    create_table :addresses, id: :uuid do |t|
      t.string :address_1
      t.string :address_2
      t.string :address_3
      t.string :address_4
      t.string :address_5
      t.uuid :city_id
      t.uuid :country_id
      t.uuid :state_id
      t.uuid :region_id
      t.string :post_code
      t.string :full_address
      t.boolean :old
      t.boolean :active
      t.datetime :created_at
      t.datetime :updated_at
      t.timestamps
    end
    add_index :addresses, [:id,:full_address], name: "index_full_address"

    create_table :offices, id: :uuid do |t|
      t.string :name
      t.string :alternate_name
      t.uuid :address_id
      t.uuid :contact_number_id
      t.boolean :main_office
      t.uuid :version_id
      t.uuid :active
      t.uuid :sequence_order
      t.uuid :created_by
      t.uuid :updated_by
      t.datetime :created_at
      t.datetime :updated_at
      t.timestamps
    end
    add_index :offices,[:id, :name, :main_office, :active, :address_id, :contact_number_id], name: "index_offices"

    create_table :statuses, id: :uuid do |t|
      t.string :name
      t.datetime :created_at
      t.datetime :updated_at
      t.timestamps
    end
    add_index :statuses,[:id,:name], name: "index_statuses"

    create_table :social_hubs, id: :uuid do |t|
      t.string :facebook
      t.string :google_plus
      t.string :twitter
      t.string :youtube
      t.string :blogger
      t.string :wordpress
      t.datetime :created_at
      t.datetime :update_at
      t.timestamps
    end

    create_table :contact_infos, id: :uuid do |t|
      t.boolean :subscriber_contact
      t.boolean :primary_contact
      t.boolean :work_contact
      t.boolean :area_contact
      t.boolean :agent_contact
      t.string :contact_status
      t.string :contact_type
      t.uuid :email_id
      t.uuid :contact_number_id
      t.string :fax
      t.string :work_location
      t.string :work_type
      t.string :work_fax
      t.text :designation
      t.string :work_website
      t.uuid :social_hub_id
      t.uuid :address_id
      t.uuid :created_by
      t.uuid :updated_by
      t.datetime :created_at
      t.datetime :updated_at
      t.timestamps
    end
    add_index :contact_infos, [:id], name: "index_contact_infos"

    create_table :infos, id: :uuid do |t|
      t.uuid :content_id
      t.uuid :created_by
      t.uuid :updated_by
      t.datetime :created_at
      t.datetime :updated_at
      t.timestamps
    end

    create_table :notes, id: :uuid do |t|
      t.uuid :content_id
      t.uuid :created_by
      t.uuid :updated_by
      t.datetime :created_at
      t.datetime :updated_at
      t.timestamps
    end

    create_table :categories, id: :uuid do |t|
      t.string :name
      t.string :title
      t.string :category_type
      t.uuid :site_id
      t.uuid :created_by
      t.uuid :updated_by
      t.datetime :created_at
      t.datetime :updated_at
      t.timestamps
    end

    create_table :departments, id: :uuid do |t|
      t.string :name
      t.string :title
      t.string :category_type
      t.uuid :site_id
      t.uuid :created_by
      t.uuid :updated_by
      t.datetime :created_at
      t.datetime :updated_at
      t.timestamps
    end

    create_table :groups, id: :uuid do |t|
      t.string :name
      t.datetime :created_at
      t.datetime :update_at
      t.timestamps
    end

    create_table :industry_types, id: :uuid do |t|
      t.string :name
      t.datetime :created_at
      t.datetime :updated_at
      t.timestamps
    end

    create_table :contents, id: :uuid do |t|
      t.string :title
      t.string :sub_title
      t.uuid :version_id
      t.text :description
      t.text :text
      t.boolean :note
      t.boolean :info
      t.string :type
      t.datetime :created_at
      t.datetime :updated_at
      t.timestamps
    end
    add_index :contents,[:id, :title, :version_id, :text, :description, :note, :info, :type], name: "index_contents"
  end
end
