class Tovar < ApplicationRecord
	has_many :alternatives, dependent: :delete_all
end
