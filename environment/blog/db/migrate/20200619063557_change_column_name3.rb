class ChangeColumnName3 < ActiveRecord::Migration[5.0]
  def change
  rename_column :lightfoods, :link, :webpage
  end
end
