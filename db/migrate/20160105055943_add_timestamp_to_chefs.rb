class AddTimestampToChefs < ActiveRecord::Migration
  def change
    add_column(:chefs, :created_at, :datetime)
      add_column(:chefs, :updated_at, :datetime)
  end
end
