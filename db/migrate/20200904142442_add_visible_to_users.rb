class AddVisibleToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :visible, :boolean, default: true
  end
end
