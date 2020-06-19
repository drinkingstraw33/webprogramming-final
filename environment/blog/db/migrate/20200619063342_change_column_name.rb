class ChangeColumnName < ActiveRecord::Migration[5.0]
  def change
    rename_column :takeoutfoods, :link, :webpage
  end
end
