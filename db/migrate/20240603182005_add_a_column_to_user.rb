class AddAColumnToUser < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :name, :string, presence: true
    add_column :users, :address, :string, presence: true
  end
end
