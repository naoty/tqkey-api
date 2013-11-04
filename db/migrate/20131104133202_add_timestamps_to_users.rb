class AddTimestampsToUsers < ActiveRecord::Migration
  def up
    add_column :users, :created_at, :datetime
    add_column :users, :updated_at, :datetime
  end

  def down
    remove_column :users, :created_at
    remove_column :users, :updated_at
  end
end
