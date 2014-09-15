class CreateUserPosts < ActiveRecord::Migration
  def up
    create_table :user_posts do |t|
      t.string :content
      t.integer :user_id
      t.timestamps
    end
    add_index("user_posts", 'user_id')
  end

  def down

    drop_table(:user_posts)
  end
end
