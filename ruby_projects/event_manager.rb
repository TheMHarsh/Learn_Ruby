require 'csv'
puts 'Event Manager Initialized!'

if File.exist? 'ruby_projects/files/event_attendees.csv'
  contents = CSV.read('ruby_projects/files/event_attendees.csv', headers: true, header_converters: :symbol)
  contents.each do |row|
    name = row[:first_name]
    puts name
  end 
else
  puts 'No file found'
end

# Cleaning Up the zip codes
contents.each do |row|
  if row[:zipcode].nil?
    zipcode = '00000'
  elsif row[:zipcode].length < 5
    zipcode = row[:zipcode].rjust(5, '0')
  elsif row[:zipcode].length > 5
    zipcode = row[:zipcode][0..4]
  else
    zipcode = row[:zipcode]
  end
  puts zipcode
end


