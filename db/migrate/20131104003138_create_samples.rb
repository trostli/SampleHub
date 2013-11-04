class CreateSamples < ActiveRecord::Migration
  def up
  	create_table :samples do |t|
  		t.belongs_to :user
      t.string :title
  		t.string :url

  		t.timestamps
  	end
  end

  def down
  	drop_table :samples
  end
end
