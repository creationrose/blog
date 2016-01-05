class ChangeEmail < ActiveRecord::Migration
  def up
    remove_index :users, :email
  end
end
