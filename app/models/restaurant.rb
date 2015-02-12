class Restaurant < ActiveRecord::Base
  has_many :reservations

  def available?(party_size)
    # res_sum = reservations.all #all the reservations of the restaurant
    total_res_count = reservations.where(party_time: party_time).sum(:party_size)
    party_size + total_res_count <= capacity
  end
end
