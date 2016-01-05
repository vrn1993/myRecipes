class RemoveTimestampsFromchefs < ActiveRecord::Migration
  def change
    remove_column(:chefs, :timestamps)
     
  end
end
