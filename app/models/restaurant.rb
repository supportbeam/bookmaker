class Restaurant < ActiveRecord::Base
  has_many :reservations

		def available?(party_size)#, date, time)
			total_reservation_count = reservations.sum(:party_size)
			party_size + total_reservation_count <= 100
		end

end
