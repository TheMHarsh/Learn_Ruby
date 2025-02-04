require 'csv'
puts 'Event Manager Initialized!'

def clean_zipcode(zipcode)
  zipcode.to_s.rjust(5, '0')[0..4]
end

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
  name = row[:first_name]
  zipcode = clean_zipcode(row[:zipcode])
  puts "#{name} #{zipcode}"
end


