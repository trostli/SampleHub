class CreateSamples < ActiveRecord::Migration
  def up
  	create_table :samples do |t|
  		t.string :title
  		t.string :url

  		t.timestamps
  	end
  end

  def down
  	drop_table :samples
  end
end
