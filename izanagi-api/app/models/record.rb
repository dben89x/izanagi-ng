class Record < ApplicationRecord
	belongs_to :monster
	has_many :monster_drop_records
end
