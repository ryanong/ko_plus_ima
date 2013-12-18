json.array!(@attendees) do |attendee|
  json.extract! attendee, :id, :dinner_attendee, :dinner, :welcome_drinks, :wedding, :transportation, :dietary_restrictions, :lodging, :favorite_drink, :sunday_breakfast
  json.url attendee_url(attendee, format: :json)
end
