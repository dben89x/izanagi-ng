class CreateRecords < ActiveRecord::Migration[5.0]
	def change
		create_table :records do |t|
			t.string :uploader
			t.integer :sample_size
			t.integer :silver_count
			t.integer :gold_count
			t.integer :plat_count
			t.integer :hoard_count
			t.integer :key_count
			t.integer :shell_count
			t.timestamps
		end
	end
end
