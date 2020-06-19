class AddLinkToHeavyfoods < ActiveRecord::Migration[5.0]
  def change
    add_column :heavyfoods, :link, :text
  end
end
