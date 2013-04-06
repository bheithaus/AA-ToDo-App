ActiveRecord::Schema.define(:version => 20130405231131) do

  create_table "items", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.boolean  "complete"
    t.integer  "project_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "items", ["title", "project_id", "complete"], :name => "index_items_on_title_and_project_id_and_complete"

  create_table "projects", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.integer  "team_id"
  end

  add_index "projects", ["team_id"], :name => "index_projects_on_team_id"
  add_index "projects", ["title"], :name => "index_projects_on_title"

  create_table "team_memberships", :force => true do |t|
    t.integer  "user_id"
    t.integer  "team_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "team_memberships", ["user_id", "team_id"], :name => "index_team_memberships_on_user_id_and_team_id"

  create_table "teams", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "eye_color"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "users", ["name"], :name => "index_users_on_name"

end
