class CreateLightfoods < ActiveRecord::Migration[5.0]
  def change
    create_table :lightfoods do |t|
      t.text :title
      t.text :address
      t.text :text
      t.text :imagelink

      t.timestamps
    end
  end
end
