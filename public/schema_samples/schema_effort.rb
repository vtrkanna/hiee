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

ActiveRecord::Schema.define(version: 20140126134307) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "uuid-ossp"

  create_table "banners", id: :uuid, default: "uuid_generate_v4()", force: true do |t|
    t.string   "name"
    t.uuid     "image_id"
    t.uuid     "site_id"
    t.uuid     "created_by_id"
    t.uuid     "updated_by_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "banners", ["created_by_id"], name: "index_banners_on_created_by_id", using: :btree
  add_index "banners", ["image_id"], name: "index_banners_on_image_id", using: :btree
  add_index "banners", ["site_id"], name: "index_banners_on_site_id", using: :btree
  add_index "banners", ["updated_by_id"], name: "index_banners_on_updated_by_id", using: :btree

  create_table "html_templates", id: :uuid, default: "uuid_generate_v4()", force: true do |t|
    t.string   "name"
    t.uuid     "created_by_id"
    t.uuid     "updated_by_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "html_templates", ["created_by_id"], name: "index_html_templates_on_created_by_id", using: :btree
  add_index "html_templates", ["updated_by_id"], name: "index_html_templates_on_updated_by_id", using: :btree

  create_table "image_attachments", id: :uuid, default: "uuid_generate_v4()", force: true do |t|
    t.string   "name"
    t.string   "alt_tag"
    t.string   "entity_type"
    t.uuid     "entity_id"
    t.uuid     "image_id"
    t.uuid     "created_by_id"
    t.uuid     "updated_by_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "image_attachments", ["created_by_id"], name: "index_image_attachments_on_created_by_id", using: :btree
  add_index "image_attachments", ["updated_by_id"], name: "index_image_attachments_on_updated_by_id", using: :btree

  create_table "image_details", id: :uuid, default: "uuid_generate_v4()", force: true do |t|
    t.string   "name"
    t.string   "alt_tag"
    t.string   "logical_name"
    t.string   "image_path"
    t.uuid     "image_id"
    t.uuid     "created_by_id"
    t.uuid     "updated_by_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "width"
    t.integer  "height"
  end

  add_index "image_details", ["created_by_id"], name: "index_image_details_on_created_by_id", using: :btree
  add_index "image_details", ["height"], name: "index_image_details_on_height", using: :btree
  add_index "image_details", ["logical_name"], name: "index_image_details_on_logical_name", using: :btree
  add_index "image_details", ["updated_by_id"], name: "index_image_details_on_updated_by_id", using: :btree
  add_index "image_details", ["width"], name: "index_image_details_on_width", using: :btree

  create_table "images", id: :uuid, default: "uuid_generate_v4()", force: true do |t|
    t.string   "name"
    t.string   "alt_tag"
    t.uuid     "created_by_id"
    t.uuid     "updated_by_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "images", ["created_by_id"], name: "index_images_on_created_by_id", using: :btree
  add_index "images", ["updated_by_id"], name: "index_images_on_updated_by_id", using: :btree

  create_table "logos", id: :uuid, default: "uuid_generate_v4()", force: true do |t|
    t.string   "name"
    t.uuid     "image_id"
    t.uuid     "site_id"
    t.uuid     "created_by_id"
    t.uuid     "updated_by_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "logos", ["created_by_id"], name: "index_logos_on_created_by_id", using: :btree
  add_index "logos", ["image_id"], name: "index_logos_on_image_id", using: :btree
  add_index "logos", ["site_id"], name: "index_logos_on_site_id", using: :btree
  add_index "logos", ["updated_by_id"], name: "index_logos_on_updated_by_id", using: :btree

  create_table "menus", id: :uuid, default: "uuid_generate_v4()", force: true do |t|
    t.string   "name"
    t.uuid     "site_id"
    t.uuid     "page_id"
    t.integer  "sequence_order"
    t.boolean  "active"
    t.string   "ancestry"
    t.uuid     "created_by_id"
    t.uuid     "updated_by_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "menus", ["ancestry"], name: "index_menus_on_ancestry", using: :btree
  add_index "menus", ["created_by_id"], name: "index_menus_on_created_by_id", using: :btree
  add_index "menus", ["page_id"], name: "index_menus_on_page_id", using: :btree
  add_index "menus", ["site_id"], name: "index_menus_on_site_id", using: :btree
  add_index "menus", ["updated_by_id"], name: "index_menus_on_updated_by_id", using: :btree

  create_table "pages", id: :uuid, default: "uuid_generate_v4()", force: true do |t|
    t.string   "name"
    t.uuid     "site_id"
    t.text     "content"
    t.uuid     "created_by_id"
    t.uuid     "updated_by_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "pages", ["created_by_id"], name: "index_pages_on_created_by_id", using: :btree
  add_index "pages", ["site_id"], name: "index_pages_on_site_id", using: :btree
  add_index "pages", ["updated_by_id"], name: "index_pages_on_updated_by_id", using: :btree

  create_table "roles", id: :uuid, default: "uuid_generate_v4()", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "site_statuses", id: :uuid, default: "uuid_generate_v4()", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sites", id: :uuid, default: "uuid_generate_v4()", force: true do |t|
    t.string   "name"
    t.string   "domain"
    t.uuid     "user_id"
    t.uuid     "site_status_id"
    t.uuid     "html_template_id"
    t.uuid     "theme_id"
    t.uuid     "logo_id"
    t.uuid     "banner_id"
    t.uuid     "created_by_id"
    t.uuid     "updated_by_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sites", ["banner_id"], name: "index_sites_on_banner_id", using: :btree
  add_index "sites", ["created_by_id"], name: "index_sites_on_created_by_id", using: :btree
  add_index "sites", ["html_template_id"], name: "index_sites_on_html_template_id", using: :btree
  add_index "sites", ["logo_id"], name: "index_sites_on_logo_id", using: :btree
  add_index "sites", ["site_status_id"], name: "index_sites_on_site_status_id", using: :btree
  add_index "sites", ["theme_id"], name: "index_sites_on_theme_id", using: :btree
  add_index "sites", ["updated_by_id"], name: "index_sites_on_updated_by_id", using: :btree
  add_index "sites", ["user_id"], name: "index_sites_on_user_id", using: :btree

  create_table "themes", id: :uuid, default: "uuid_generate_v4()", force: true do |t|
    t.string   "name"
    t.uuid     "html_template_id"
    t.uuid     "created_by_id"
    t.uuid     "updated_by_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "themes", ["created_by_id"], name: "index_themes_on_created_by_id", using: :btree
  add_index "themes", ["html_template_id"], name: "index_themes_on_html_template_id", using: :btree
  add_index "themes", ["updated_by_id"], name: "index_themes_on_updated_by_id", using: :btree

  create_table "users", id: :uuid, default: "uuid_generate_v4()", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "full_name"
    t.string   "email"
    t.string   "password"
    t.uuid     "role_id"
    t.uuid     "created_by_id"
    t.uuid     "updated_by_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["created_by_id"], name: "index_users_on_created_by_id", using: :btree
  add_index "users", ["role_id"], name: "index_users_on_role_id", using: :btree
  add_index "users", ["updated_by_id"], name: "index_users_on_updated_by_id", using: :btree

end
