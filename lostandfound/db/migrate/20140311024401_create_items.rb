class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :title
      t.text :description
      t.text :owner
      t.integer :category_id

      t.timestamps
  	end
  end
end
