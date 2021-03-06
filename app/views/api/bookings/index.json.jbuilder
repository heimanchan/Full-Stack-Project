json.bookings do
  @bookings.each do |booking|
    json.set! booking.id do 
      json.extract! booking, :id, :start_date, :end_date, :num_guests, :spot_id
      json.spotPic url_for(booking.spot.photos[0]) if booking.spot.photos.attached?
    end
  end
end

json.spots do
  @bookings.each do |booking|
    spot = booking.spot
    json.set! spot.id do
      json.extract! spot, :id, :title, :address, :lat, :lng, :max_guests, :num_bedrooms, :num_beds, :price, :ratings, :description, :heat, :pool, :shampoo, :tv, :wifi, :air_conditioning, :iron, :hair_dryer, :first_aid, :laundry
      json.owner spot.owner
      json.ownerFirstName spot.owner.first_name
      json.ownerLastName spot.owner.last_name
      json.cityName spot.city.name
      json.ownerPhotoUrl url_for(spot.owner.photo) if spot.owner.photo.attached?

      json.photoUrls spot.photos.map { |pic| url_for(pic) } if spot.photos.attached?
    end
  end
end