class AddNameToChefs < ActiveRecord::Migration
  def change
    add_column :chefs, :name, :string
  end
end
