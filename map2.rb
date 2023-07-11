places = ['restaurant', 'mall', 'park', 'theater']
# places_upcase = places.map { |place| place.upcase }
places_upcase = places.map(&:upcase) # forma encurtada de executar um método em cada elemento iterado
puts places_upcase.inspect
# => ["RESTAURANT", "MALL", "PARK", "THEATER"]
puts places.inspect
# => ['restaurant', 'mall', 'park', 'theater']
