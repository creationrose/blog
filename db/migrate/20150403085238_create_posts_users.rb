class CreatePostsUsers < ActiveRecord::Migration
  def change
    create_table :posts_users do |t|
      t.references :post
      t.references :user
    end
  end
end
