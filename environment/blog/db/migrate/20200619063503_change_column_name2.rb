class ChangeColumnName2 < ActiveRecord::Migration[5.0]
  def change
    rename_column :heavyfoods, :link, :webpage
  end
end
