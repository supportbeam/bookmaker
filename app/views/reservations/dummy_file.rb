
#################
# class Restaurant <ActiveRecord::Base
# 	has_many :reservations

# 		def available?(party_size, date, time)
# 			total_reservation_count = reservations.where(date: date, time: party_time).sum(:party_size)
# 			party_size + total_reservation_count <= capacity
# 		end
# end

# ###############



# class Reservation <ActiveRecord::Base

# 	belongs_to :Restaurant
# 	validates :party_size, :party_time, presence: total_reservation_count
# 	validates :availability


# 	private
# 	def availability
# 		if !restaurant.available(party_size, party_time)
# 			errors.add(:base, "Restaurant is full for this spot")
# 		end
# 	end
# end


################################