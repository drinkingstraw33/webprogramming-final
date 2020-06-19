class AddLinkToTakeoutfoods < ActiveRecord::Migration[5.0]
  def change
    add_column :takeoutfoods, :link, :text
  end
end
