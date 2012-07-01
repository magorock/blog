class EntriesTags < ActiveRecord::Migration
  def change
  	create_table :entries_tags, :id => false do |t|
			t.integer :entry_id
			t.integer :tag_id
		end
  end
end
