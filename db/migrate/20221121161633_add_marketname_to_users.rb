class AddMarketnameToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :market_name, :string
  end
end
