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
    t.string "first_name"
    t.string "last_name"
    t.string "email_id"
    t.string "alternate_mail_id"
    t.date "date_of_birth"
    t.integer "password_id"
    t.integer "address_id"
    t.integer "city_id"
    t.integer "state_id"
    t.integer "country_id"
    t.string "post_code"
    t.string "mobile_no"
    t.string "subscriber_type_id"
    t.integer "free_subscriber_id"
    t.integer "user_name_id"
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

  create_table "user_names", :force => true do |t|
    t.string "new"
    t.string "old"
    t.integer "subscriber_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "passwords", :force => true do |t|
    t.string "new"
    t.string "old"
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
    t.integer "address_id"
    t.integer "campaign_ids"
    t.datetime 'created_at'
    t.datetime "updated_at"
  end

  create_table "campaigns", :force => true do |t|
    t.string "name"
    t.string "alter_name"
    t.string "description"
    t.integer "campaign_type_id"
    t.integer "main_office_id"
    t.integer "agent_id"
    t.integer "campaign_office_id"
    t.datetime 'created_at'
    t.datetime "updated_at"
  end

  create_table "areas", :force => true do |t|
    t.string "name"
    t.string "user_name"
    t.integer "password_id"
    t.string "email_id"
    t.string "alternate_name"
    t.string "telephone"
    t.string "fax"
    t.string "website"
    t.string "description"
    t.integer "campaign_id"
    t.integer "campaign_office_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "campaign_offices", :force => true do |t|
    t.integer "address_id"
    t.boolean "main_office"
  end

  create_table "campaign_types", :force => true do |t|
    t.string "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "products", :force => true do |t|
    t.string "name"
    t.integer "product_type_id"
    t.datetime "created_at"
    t.datetime "update_at"
  end

  create_table "product_types", :force => true do |t|
    t.string "name"
    t.datetime "created_at"
    t.datetime "update_at"
  end

  create_table "groups", :force => true do |t|
    t.string "name"
    t.datetime "created_at"
    t.datetime "update_at"
  end

  create_table "social_hubs", :force => true do |t|
    t.string "facebook"
    t.string "google_plus"
    t.string "twitter"
    t.datetime "created_at"
    t.datetime "update_at"
  end

end
