ActiveRecord::Schema.define(version: 20170911044921) do

	# These are extensions that must be enabled in order to support this database
	enable_extension "plpgsql"

	create_table "drops", force: :cascade do |t|
		t.string   "name"
		t.datetime "created_at", null: false
		t.datetime "updated_at", null: false
	end

	create_table "monster_drop_records", force: :cascade do |t|
		t.integer  "monster_drop_id"
		t.integer  "record_id"
		t.integer  "count"
		t.datetime "created_at",      null: false
		t.datetime "updated_at",      null: false
		t.index ["monster_drop_id"], name: "index_monster_drop_records_on_monster_drop_id", using: :btree
		t.index ["record_id"], name: "index_monster_drop_records_on_record_id", using: :btree
	end

	create_table "monster_drops", force: :cascade do |t|
		t.integer  "monster_id"
		t.integer  "drop_id"
		t.datetime "created_at", null: false
		t.datetime "updated_at", null: false
		t.index ["drop_id"], name: "index_monster_drops_on_drop_id", using: :btree
		t.index ["monster_id"], name: "index_monster_drops_on_monster_id", using: :btree
	end

	create_table "monsters", force: :cascade do |t|
		t.string   "name"
		t.datetime "created_at", null: false
		t.datetime "updated_at", null: false
	end

	create_table "records", force: :cascade do |t|
		t.integer  "monster_id"
		t.string   "uploader"
		t.datetime "created_at", null: false
		t.datetime "updated_at", null: false
		t.index ["monster_id"], name: "index_records_on_monster_id", using: :btree
	end

end
