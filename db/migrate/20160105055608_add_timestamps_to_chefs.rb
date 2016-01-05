class AddTimestampsToChefs < ActiveRecord::Migration
  def change
    add_column :chefs, :timestamps, :string
  end
end
