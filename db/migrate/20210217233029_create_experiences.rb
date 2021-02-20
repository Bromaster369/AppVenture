class CreateExperiences < ActiveRecord::Migration[6.1]
  def change
    create_table :experiences do |t|
      t.string :title
      t.text :content
      t.integer "user_id"
      t.integer "category_id"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
      t.index ["category_id"], name: "index_posts_on_category_id"
      t.index ["title"], name: "index_experiences_on_title"
      t.index ["user_id"], name: "index_experiences_on_user_id"

      
    end
  end
end
