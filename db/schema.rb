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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20131114172853) do

  create_table "beginners", :force => true do |t|
    t.string   "title"
    t.integer  "category"
    t.text     "contents"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "blog_counts", :force => true do |t|
    t.integer  "blog_id"
    t.integer  "view"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "blogs", :force => true do |t|
    t.string   "url"
    t.string   "title"
    t.string   "describe"
    t.integer  "in",         :default => 0
    t.integer  "out",        :default => 0
    t.integer  "week_in",    :default => 0
    t.integer  "month_in",   :default => 0
    t.string   "image"
    t.string   "rss"
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
  end

  create_table "boards", :force => true do |t|
    t.string   "title"
    t.integer  "stock_id"
    t.integer  "consul"
    t.string   "image"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "comments", :force => true do |t|
    t.string   "sender"
    t.text     "contents"
    t.integer  "board_id"
    t.integer  "stock_id"
    t.integer  "comment_id"
    t.integer  "consultant_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "consultants", :force => true do |t|
    t.string   "title"
    t.integer  "category"
    t.text     "contents"
    t.string   "site_name"
    t.string   "url"
    t.string   "place"
    t.string   "person"
    t.string   "phone"
    t.string   "kinsyo"
    t.string   "rate"
    t.string   "info"
    t.string   "regist"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "glossaries", :force => true do |t|
    t.string   "title"
    t.integer  "category"
    t.text     "contents"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "inquiries", :force => true do |t|
    t.string   "address"
    t.text     "content"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "ins", :force => true do |t|
    t.integer  "blog_id"
    t.string   "ip"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "mailaddresses", :force => true do |t|
    t.string   "address"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "news", :force => true do |t|
    t.string   "link"
    t.string   "newsdate"
    t.string   "word"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "pieces", :force => true do |t|
    t.string   "title"
    t.string   "contents"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "reports", :force => true do |t|
    t.text     "contents"
    t.integer  "report_type"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "stocks", :force => true do |t|
    t.integer  "code"
    t.string   "name"
    t.string   "market"
    t.string   "price"
    t.string   "previousprice"
    t.string   "volume"
    t.string   "previousvolume"
    t.string   "opening"
    t.string   "high"
    t.string   "low"
    t.string   "chart"
    t.string   "industry"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
    t.string   "margin_buying"
    t.string   "margin_selling"
    t.string   "d_margin_buying"
    t.string   "d_margin_selling"
  end

  add_index "stocks", ["code"], :name => "index_stocks_on_code"
  add_index "stocks", ["name"], :name => "index_stocks_on_name"

  create_table "summaries", :force => true do |t|
    t.string   "price"
    t.string   "comparison"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "toushikomon_boards", :force => true do |t|
    t.string   "title"
    t.integer  "toushikomon_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "toushikomons", :force => true do |t|
    t.string   "name"
    t.string   "site_name"
    t.string   "url"
    t.string   "adress"
    t.string   "owner"
    t.string   "phone"
    t.string   "kinsyo"
    t.text     "contents"
    t.integer  "category"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
