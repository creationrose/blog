class AddProviderDetailsToUser < ActiveRecord::Migration
  def change
    add_column :users, :provider, :string
    add_column :users, :provider_id, :string
  end
end
