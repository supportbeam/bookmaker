class Reservation < ActiveRecord::Base

  belongs_to :user
  belongs_to :restaurant

  validates :party_size, :party_time, presence: true
  validates :availability
  
  private
  def availability
    if restaurant.available?(party_size, party_time)
      errors.add(:base, "Restaurant is full for this spot.")
    end
  end

end
