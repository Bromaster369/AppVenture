class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|
      t.string "content"
      t.integer "user_id"
      t.integer "experience_id"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
      t.index ["experience_id"], name: "index_comments_on_experience_id"
      t.index ["user_id"], name: "index_comments_on_user_id"
    end
  end
end
