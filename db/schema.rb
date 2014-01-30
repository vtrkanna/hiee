# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(:version => 20140111104305) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "subscribers", :force => true do |t|
    t.string "email_id"
    t.string "alternate_mail_id"
    t.date "date_of_birth"
    t.integer "name_id"
    t.integer "password_id"
    t.integer "address_id"
    t.integer "contact_info_id"
    t.string "subscriber_type_id"
    t.integer "free_subscriber_id"
    t.integer "status_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "free_subscribers", :force => true do |t|
    t.integer "subscriber_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "premium_subscribers", :force => true do |t|
    t.integer "subscriber_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "names", :force => true do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "full_name"
    t.integer "last_used"
    t.integer "subscriber_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "passwords", :force => true do |t|
    t.string "new"
    t.integer "old_id"
    t.integer "subscriber_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "subscriber_types", :force => true do |t|
    t.string "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "countries", :force => true do |t|
    t.string "name"
    t.integer "region_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cities", :force => true do |t|
    t.string "name"
    t.integer "country_id"
    t.integer "region_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "contact_infos", :force => true do |t|
    t.boolean "subscriber_contact"
    t.boolean "primary_contact"
    t.boolean "work_contact"
    t.boolean "area_contact"
    t.boolean "agent_contact"
    t.string "contact_status"
    t.string "contact_type"
    t.string "primary_email"
    t.string "alternate_email"
    t.string "primary_mobileno"
    t.string "primary_telephone"
    t.string "alternate_nubmer"
    t.string "fax"
    t.string "work_mobile"
    t.string "work_telephone"
    t.string "work_email"
    t.string "work_location"
    t.string "work_type"
    t.string "work_fax"
    t.text "desigination"
    t.string "work_website"
    t.integer "address_id"
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "address", :force => true do |t|
    t.string "address_1"
    t.string "address_2"
    t.string "address_3"
    t.string "address_4"
    t.string "address_5"
    t.integer "city_id"
    t.integer "country_id"
    t.integer "state_id"
    t.integer "region_id"
    t.string "post_code"
    t.string "full_address"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "regions", :force => true do |t|
    t.string 'name'
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "agents", :force => true do |t|
    t.string "name"
    t.string "alter_name"
    t.text "description"
    t.integer "address_id"
    t.string "area_ids"
    t.integer "main_office_id"
    t.datetime 'created_at'
    t.datetime "updated_at"
  end

  create_table "areas", :force => true do |t|
    t.string "name"
    t.string "user_name"
    t.datetime "display_name"
    t.integer "password_id"
    t.string "email_id"
    t.string "alternate_name"
    t.integer "contact_info_id"
    t.string "telephone"
    t.string "fax"
    t.string "website"
    t.text "description"
    t.string "overview"
    t.integer "agent_id"
    t.integer "area_office_id"
    t.integer "main_office_id"
    t.integer "area_review_id"
    t.integer "area_event_id"
    t.integer "area_other_info_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "area_other_infos", :force => true do |t|
    t.datetime "open_time"
    t.datetime "close_time"
    t.string "no_of_products"
    t.integer "no_of_staffs"
    t.datetime "area_stated_time"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "area_subscribers", :force => true do |t|
    t.integer "area_id"
    t.integer "area_review_id"
    t.string "no_subscribers"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "area_events", :force => true do |t|
    t.string "name"
    t.string "dispaly_name"
    t.datetime "publish_date"
    t.datetime "expiry_date"
    t.boolean "active"
    t.boolean "expired"
  end

  create_table "area_offices", :force => true do |t|
    t.integer "address_id"
    t.boolean "main_office"
  end

  create_table "products", :force => true do |t|
    t.string "name"
    t.string "alternate_name"
    t.string "title"
    t.string "key_word"
    t.text "description"
    t.integer "image_id"
    t.integer "product_status_id"
    t.integer "product_info_id"
    t.boolean "active"
    t.boolean "expired"
    t.boolean "area_event"
    t.integer "group_id"
    t.integer "product_type_id"
    t.integer "agent_id"
    t.integer "area_id"
    t.integer "area_event_id"
    t.datetime "publish_date"
    t.datetime "expiry_date"
    t.string "tag"
    t.integer "version_id"
    t.datetime "created_at"
    t.datetime "update_at"
  end

  create_table "product_infos", :force => true do |t|
    t.integer "product_id"
    t.integer "product_type_id"
    t.integer "video"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "product_types", :force => true do |t|
    t.string "name"
    t.datetime "created_at"
    t.datetime "update_at"
  end

  create_table "product_statuses", :force => true do |t|
    t.string "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "area_reviews", :force =>  true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "groups", :force => true do |t|
    t.string "name"
    t.datetime "created_at"
    t.datetime "update_at"
  end

  create_table "articles", :force => true do |t|
    t.string "title"
    t.string "sub_title"
    t.integer "version_id"
    t.text "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "video_infos", :force => true do |t|
    t.string "name"
    t.string "title"
    t.string "display_name"
    t.text "description"
    t.string "video_path"
    t.string 'video_format'
    t.string "author"
    t.string "force_code"
    t.string "file_size"
    t.string "file_name"
    t.integer "width"
    t.integer "height"
    t.string "resolution"
    t.integer "sequence_number"
    t.boolean "licence"
    t.string "licence_type"
    t.string "licence_key"
    t.boolean "avatar"
    t.integer "avatar_id"
    t.integer "image_id"
    t.integer "status_id"
    t.integer "version_id"
    t.string "caption"
    t.datetime "created_by"
    t.datetime "updated_by"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "images", :force => true do |t|
    t.string "name"
    t.string "title"
    t.text "description"
    t.string "author"
    t.string "atl_tag"
    t.boolean "licence"
    t.string "licence_type"
    t.string "licence_key"
    t.boolean "avatar"
    t.integer "avatar_id"
    t.string "image_type"
    t.integer "sequence_number"
    t.integer "width"
    t.integer "height"
    t.string "resolution"
    t.string "file_size"
    t.integer "gallery_id"
    t.string "image_path"
    t.string "image_source"
    t.integer "status_id"
    t.integer "version_id"
    t.string "caption"
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "avatars", :force => true do |t|
    t.string "name"
    t.string "type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "audios", :force => true do |t|
    t.string "name"
    t.string "title"
    t.string "author"
    t.boolean "licence"
    t.string "licence_type"
    t.string "licence_key"
    t.text "description"
    t.string "audio_path"
    t.string "audio_type"
    t.integer "status_id"
    t.integer "image_id"
    t.integer "file_size"
    t.string "file_name"
    t.string "caption"
    t.boolean "avatar"
    t.integer "avatar_id"
    t.integer "version_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "medias", :force => true do |t|
    t.integer "video_info_id"
    t.integer "image_id"
    t.integer "product_id"
    t.integer "area_id"
    t.integer "agent_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "statuses", :force => true do |t|
    t.string "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sites", :force => true do |t|
    t.string "name"
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "roles", :force => true do |t|
    t.string "name"
    t.integer "status_id"
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "effects", :force => true do |t|
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "themes", :force => true do |t|
    t.string "name"
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "templates", :force => true do |t|
    t.string "name"
    t.integer "site_id"
    t.integer "status_id"
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at"
  end

  create_table "pages", :force => true do |t|
    t.string "name"
    t.integer "status_id"
    t.integer "template_id"
    t.integer "theme_id"
    t.integer "site_id"
    t.integer "page_type_id"
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "page_types", :force => true do |t|
    t.string "name"
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "menus", :force => true do |t|
    t.string "name"
    t.string "title"
    t.integer "status_id"
    t.string "url_id"
    t.integer "order_id"
    t.integer "page_id"
    t.integer "site_id"
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "urls", :force => true do |t|
    t.string "name"
    t.integer "site_id"
    t.integer "page_id"
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "social_hubs", :force => true do |t|
    t.string "facebook"
    t.string "google_plus"
    t.string "twitter"
    t.datetime "created_at"
    t.datetime "update_at"
  end

end
