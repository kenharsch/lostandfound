class AddTypes < ActiveRecord::Migration
  def change
  	create_table :types do |t|
      	t.string :title
      	t.string :description
    end
  end
end
