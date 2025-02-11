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

# Using Google's Civic Information API

require 'google/apis/civicinfo_v2'

civic_info = Google::Apis::CivicinfoV2::CivicInfoService.new
civic_info.key = 'AIzaSyClRzDqDh5MsXwnCWi0kOiiBivP6JsSyBw'
response = civic_info.representative_info_by_address(address: 80202, levels: 'country', roles: ['legislatorUpperBody', 'legislatorLowerBody'])

puts response