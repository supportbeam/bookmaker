
# ################


# class Restaurant <ActiveRecord::Base
# 	has_many :reservations

# 		def available?(party_size, date, time)
# 			total_reservation_count = reservations.where(date: date, time: time).sum(:party_size)
# 			party_size + total_reservation_count <= capacity
# 		end

# 	def available_days(party_size, n=10)
# 		(0..n).map do |days_in_future|
# 			future_date = (Time.now + days_in_future.days)
# 			date = future_date.strptime("%Y-%m-%d")
# 			[date, available_times(party_size, date)]
# 		end
# 	end

# 	def available_times(party_size, date)
# 		(0..23).map do |hour|
# 			[hour, available?(party_size, date, hour)]
# 		end
# 		(0..23).select do |hour|
# 			available?(party_size, date, hour)
# 		end
# 	end
# end

###############



# class Reservation <ActiveRecord::Base

# 	belongs_to :Restaurant
# 	validates :party_size, :party_time, presence: total_reservation_count
# 	validates :availability


# 	private
# 	def availability
# 		if !restaurant.available?(party_size, date, time)
# 			errors.add(:base, "Restaurant is full for this spot")
# 		end
# 	end
# end


################################