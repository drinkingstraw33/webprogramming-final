class AddLinkToLightfoods < ActiveRecord::Migration[5.0]
  def change
    add_column :lightfoods, :link, :text
  end
end
