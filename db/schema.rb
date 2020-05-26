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

ActiveRecord::Schema.define(version: 2020_05_26_220022) do

  create_table "job_runs", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.boolean "success"
    t.integer "return_code"
    t.string "error_message"
    t.text "stdout", limit: 4294967295
    t.text "stderr", limit: 4294967295
    t.datetime "start_time", precision: 6, null: false
    t.datetime "end_time", precision: 6
    t.bigint "job_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "scheduled_start_time"
    t.integer "schedule_diff_in_seconds"
    t.boolean "is_manual", default: false
    t.index ["job_id", "created_at"], name: "index_job_runs_on_job_id_and_created_at"
    t.index ["job_id"], name: "index_job_runs_on_job_id"
    t.index ["start_time"], name: "index_job_runs_on_start_time"
  end

  create_table "job_stats", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.integer "runs", default: 0
    t.integer "failed", default: 0
    t.decimal "avg_runtime", precision: 10, scale: 4, default: "0.0"
    t.decimal "max_runtime", precision: 10, scale: 4, default: "0.0"
    t.decimal "min_runtime", precision: 10, scale: 4, default: "0.0"
    t.integer "job_count", default: 0
    t.integer "period", default: 0
    t.datetime "start_dt"
    t.datetime "end_dt"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "total_jobs", null: false
    t.integer "total_enabled", null: false
    t.decimal "avg_job_lag", precision: 10, scale: 4, default: "0.0"
    t.integer "max_job_lag"
    t.integer "min_job_lag"
    t.index ["user_id"], name: "index_job_stats_on_user_id"
  end

  create_table "jobs", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.string "name", limit: 100, null: false
    t.string "cron", limit: 20, null: false
    t.datetime "last_run", precision: 6
    t.datetime "next_run", precision: 6, null: false
    t.string "command", null: false
    t.string "timezone", limit: 50, default: "UTC"
    t.boolean "enabled", default: true
    t.boolean "running", default: false
    t.boolean "success", default: false
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "success_callback"
    t.string "failure_callback"
    t.index ["name", "user_id"], name: "index_jobs_on_name_and_user_id", unique: true
    t.index ["next_run"], name: "index_jobs_on_next_run"
    t.index ["user_id"], name: "index_jobs_on_user_id"
  end

  create_table "taggings", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.integer "tag_id"
    t.string "taggable_type"
    t.integer "taggable_id"
    t.string "tagger_type"
    t.integer "tagger_id"
    t.string "context", limit: 128
    t.datetime "created_at"
    t.index ["context"], name: "index_taggings_on_context"
    t.index ["tag_id", "taggable_id", "taggable_type", "context", "tagger_id", "tagger_type"], name: "taggings_idx", unique: true
    t.index ["tag_id"], name: "index_taggings_on_tag_id"
    t.index ["taggable_id", "taggable_type", "context"], name: "index_taggings_on_taggable_id_and_taggable_type_and_context"
    t.index ["taggable_id", "taggable_type", "tagger_id", "context"], name: "taggings_idy"
    t.index ["taggable_id"], name: "index_taggings_on_taggable_id"
    t.index ["taggable_type"], name: "index_taggings_on_taggable_type"
    t.index ["tagger_id", "tagger_type"], name: "index_taggings_on_tagger_id_and_tagger_type"
    t.index ["tagger_id"], name: "index_taggings_on_tagger_id"
  end

  create_table "tags", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.string "name", collation: "utf8_bin"
    t.integer "taggings_count", default: 0
    t.index ["name"], name: "index_tags_on_name", unique: true
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.string "username", limit: 20, null: false
    t.string "password_digest", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["username"], name: "index_users_on_username", unique: true
  end

  add_foreign_key "job_runs", "jobs", on_delete: :cascade
  add_foreign_key "job_stats", "users", on_delete: :cascade
  add_foreign_key "jobs", "users", on_delete: :cascade
end
